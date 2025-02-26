import 'package:dongpo/model/login/login_request_model.dart';
import 'package:dongpo/model/login/login_response_model.dart';
import 'package:dongpo/service/login_api.dart';
import 'package:dongpo/service/login_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_repo.g.dart';

class LoginRepository {
  LoginApi loginApi;
  AuthService authService;

  LoginRepository(
    this.loginApi,
    this.authService,
  );

  Future<LoginResponseModel?> kakaoLogin() async {
    final accessToken = await authService.loginWithKakao();
    if (accessToken == null) {
      return null;
    }
    final result =
        await loginApi.kakaoLogin(KakaoLoginRequest(token: accessToken));
    return result.data;
  }

  Future<LoginResponseModel?> appleLogin() async {
    final credential = await authService.loginWithApple();
    if (credential.isEmpty) {
      return null;
    }
    final result = await loginApi.appleLogin(
      AppleLoginRequest(
        identityToken: credential[0],
        authorizationCode: credential[1],
      ),
    );
    return result.data;
  }

  Future<LoginResponseModel> appleSignUp(AppleSignUpRequest body) async {
    final result = await loginApi.appleSignUp(body);
    return result.data;
  }

  Future<LoginResponseModel> reissue(RefreshRequest body) async {
    final result = await loginApi.reissue(body);
    return result.data;
  }
}

@riverpod
LoginRepository loginRepository(Ref ref) {
  final loginApi = ref.watch(loginApiProvider);
  final authService = ref.watch(authServiceProvider);
  return LoginRepository(loginApi, authService);
}
