import 'package:dongpo/core/log.dart';
import 'package:dongpo/core/network_provider.dart';
import 'package:dongpo/service/login_api.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'login_api_service.g.dart';

@riverpod
LoginApi loginApi(Ref ref) {
  final dio = ref.watch(dioProvider);

  return LoginApi(dio, baseUrl: "https://ysw123.xyz/api/auth");
}

@riverpod
AuthService authService(Ref ref) => AuthService();

class AuthService {
  Future<String?> loginWithKakao() async {
    OAuthToken oAuthToken;
    // 카카오톡 실행 가능 여부 확인
    if (await isKakaoTalkInstalled()) {
      try {
        oAuthToken = await UserApi.instance.loginWithKakaoTalk();
        Log.d(
            "kakaoTalk login accessToken: ${oAuthToken.accessToken.toString()}");
      } catch (e) {
        Log.w("kakaoTalk login failed: $e");
        if (e is PlatformException && e.code == "CANCELED") {
          // 로그인 취소
          return null;
        }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          oAuthToken = await UserApi.instance.loginWithKakaoAccount();
          Log.d(
              "kakaoAccount login accessToken: ${oAuthToken.accessToken.toString()}");
        } catch (e) {
          Log.e("kakaoAccount login failed: $e");
          // 로그인 실패
          return null;
        }
      }
    } else {
      // 카카오톡 어플이 설치되지 않은 경우
      try {
        oAuthToken = await UserApi.instance.loginWithKakaoAccount();
        Log.d(
            "kakaoAccount login accessToken: ${oAuthToken.accessToken.toString()}");
      } catch (e) {
        Log.e("kakaoAccount login failed: $e");
        // 로그인 실패
        return null;
      }
    }
    return oAuthToken.accessToken;
  }

  Future<List<String>> loginWithApple() async {
    try {
      final AuthorizationCredentialAppleID appleID =
          await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
      final String? identityToken = appleID.identityToken;
      final String authCode = appleID.authorizationCode;
      Log.d("Apple login userIdentifier: ${appleID.userIdentifier}");
      Log.d("Apple login identityToken: $identityToken");
      Log.d("Apple login authorizationCode: $authCode");

      if (identityToken != null) {
        return [
          identityToken,
          authCode,
        ];
      } else {
        Log.w("Apple login failed: no identity token");
      }
    } catch (e, st) {
      Log.e(e.toString());
      Log.e(st.toString());
    }
    return [];
  }
}
