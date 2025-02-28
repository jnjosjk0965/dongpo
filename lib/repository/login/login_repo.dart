import 'package:dongpo/core/storage.dart';
import 'package:dongpo/model/login/login_request_model.dart';
import 'package:dongpo/model/login/login_response_model.dart';
import 'package:dongpo/service/login_api.dart';
import 'package:dongpo/service/login_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_repo.g.dart';

@riverpod
LoginRepository loginRepository(Ref ref) {
  final loginApi = ref.watch(loginApiProvider);
  final authService = ref.watch(authServiceProvider);
  final storage = ref.watch(secureStorageProvider);
  return LoginRepository(loginApi, authService, storage);
}

class LoginRepository {
  LoginApi loginApi;
  AuthService authService;
  SecureStorage storage;

  LoginRepository(
    this.loginApi,
    this.authService,
    this.storage,
  );

  Future<LoginResponseModel?> kakaoLogin() async {
    // kakao token 발급
    final socialToken = await authService.loginWithKakao();
    if (socialToken == null) {
      return null;
    }
    // kakao 토큰 서버 전송 및 서비스 토큰 발급
    final result =
        await loginApi.kakaoLogin(KakaoLoginRequest(token: socialToken));
    // 토큰 저장
    if (result.data != null) {
      storage.saveAccessToken(result.data!.accessToken);
      storage.saveRefreshToken(result.data!.refreshToken);
    }
    return result;
  }

  Future<LoginResponseModel?> appleLogin() async {
    // apple credential 발급
    final credential = await authService.loginWithApple();
    if (credential.isEmpty) {
      return null;
    }
    // apple credential 서버 전송 및 서비스 토큰 발급
    final result = await loginApi.appleLogin(
      AppleLoginRequest(
        identityToken: credential[0],
        authorizationCode: credential[1],
      ),
    );
    // 토큰 저장
    if (result.data != null) {
      storage.saveAccessToken(result.data!.accessToken);
      storage.saveRefreshToken(result.data!.refreshToken);
    }
    return result;
  }

  Future<LoginResponseModel> appleSignUp(AppleSignUpRequest body) async {
    final result = await loginApi.appleSignUp(body);
    return result;
  }

  Future<LoginResponseModel?> reissue() async {
    // 토큰 불러오기
    final refreshToken = await storage.readRefreshToken();
    if (refreshToken == null) {
      return null;
    }
    // 토큰 재발급
    final result =
        await loginApi.reissue(RefreshRequest(refreshToken: refreshToken));
    // 토큰 저장
    if (result.data != null) {
      storage.saveAccessToken(result.data!.accessToken);
      storage.saveRefreshToken(result.data!.refreshToken);
    }
    return result;
  }
}
