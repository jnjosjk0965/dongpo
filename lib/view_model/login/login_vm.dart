import 'package:dio/dio.dart';
import 'package:dongpo/core/log.dart';
import 'package:dongpo/core/model/social_type.dart';
import 'package:dongpo/model/login/login_response_model.dart';
import 'package:dongpo/repository/login/login_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'login_vm.g.dart';
part 'login_vm.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(AsyncValue.loading()) AsyncValue<bool> loginState,
    String? email,
  }) = _LoginState;

  factory LoginState.init() {
    return const LoginState(
      loginState: AsyncValue.loading(),
      email: "",
    );
  }
}

@Riverpod(keepAlive: true)
class LoginVm extends _$LoginVm {
  final storage = const FlutterSecureStorage();

  @override
  LoginState build() {
    return LoginState.init();
  }

  Future<void> login() async {
    final startTime = DateTime.now();

    // 토큰 재발급을 통해 유효성 확인
    final response = await ref.read(loginRepositoryProvider).reissue();

    // 최소 1.5초 동안 대기
    final elapsedTime = DateTime.now().difference(startTime);
    final remainingTime = const Duration(milliseconds: 1500) - elapsedTime;
    if (remainingTime > Duration.zero) {
      await Future.delayed(remainingTime);
    }
    if (response != null && response.data != null) {
      // 성공시 홈화면 이동
      final data = response.data!;
      state = state.copyWith(
        loginState: const AsyncValue.data(true),
        email: data.claims,
      );
    } else {
      // 실패시 로그인 화면 로드
      state = state.copyWith(
        loginState: const AsyncValue.data(false),
      );
    }
  }

  Future<LoginResult> socialLogin({required SocialType type}) async {
    try {
      final LoginResponseModel? response;
      switch (type) {
        case SocialType.kakao:
          response = await ref.read(loginRepositoryProvider).kakaoLogin();
          break;
        case SocialType.apple:
          response = await ref.read(loginRepositoryProvider).appleLogin();
          break;
      }
      Log.d(response.toString());
      if (response != null && response.data != null) {
        final data = response.data!;
        state = state.copyWith(
          loginState: const AsyncValue.data(true),
          email: data.claims,
        );
        return const LoginResult(
          type: LoginResultType.success,
          message: "로그인 성공",
        );
      } else {
        return LoginResult(
          type: LoginResultType.failure,
          message: "${response?.message}[${response?.code}]",
        );
      }
    } on DioException catch (e) {
      final response = e.response;
      return LoginResult(
        type: LoginResultType.failure,
        message: "로그인에 실패했습니다.[${response?.data["status"]}]",
      );
    } catch (e) {
      return const LoginResult(
        type: LoginResultType.error,
        message: "오류가 발생했습니다.",
      );
    }
  }
}
