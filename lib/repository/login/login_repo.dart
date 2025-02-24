import 'package:dongpo/core/log.dart';
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

  Future<LoginResponseModel?> kakaoLogin(KakaoLoginRequest body) async {
    // TODO: 추후 리턴값을 String 이나 enum으로 바꿔서 vm에서 처리
    final accessToken = await authService.loginWithKakao();
    if (accessToken == null) {
      return null;
    }
    final result =
        await loginApi.kakaoLogin(KakaoLoginRequest(token: accessToken));
    final statusCode = result.response.statusCode ?? 500;
    switch (result.response.statusCode) {
      case int _ when (statusCode >= 200 && statusCode < 300):
        return result.data;
      case int _ when (statusCode >= 400 && statusCode < 600):
        Log.d("status code: $statusCode");
        Log.d("status msg: ${result.response.statusMessage}");
        return null;
      default:
        Log.e("unknown error: $statusCode");
        Log.e("msg: ${result.response.statusMessage}");
        return null;
    }
  }

  Future<LoginResponseModel> appleLogin(AppleLoginRequest body) async {
    final result = await loginApi.appleLogin(body);
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
