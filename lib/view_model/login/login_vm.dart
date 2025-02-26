import 'package:dio/dio.dart';
import 'package:dongpo/core/log.dart';
import 'package:dongpo/model/login/login_response_model.dart';
import 'package:dongpo/repository/login/login_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_vm.g.dart';
part 'login_vm.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) isLogin,
    String? email,
    String? accessToken,
    String? refreshToken,
  }) = _LoginState;

  factory LoginState.init() {
    return const LoginState(
      isLogin: false,
      email: "",
      accessToken: "",
      refreshToken: "",
    );
  }
}

@Riverpod(keepAlive: true)
class LoginVm extends _$LoginVm {
  @override
  LoginState build() {
    return LoginState.init();
  }

  Future<LoginResult> kakaoLogin() async {
    try {
      final response = await ref.watch(loginRepositoryProvider).kakaoLogin();
      if (response != null) {
        final data = response.data;
        state = state.copyWith(
          isLogin: true,
          email: data.claims,
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
        );
        return const LoginResult(
            type: LoginResultType.success, message: "로그인 성공");
      } else {
        throw Exception();
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        return LoginResult(
            type: LoginResultType.failure, message: e.message ?? "");
      }
    } catch (e) {
      return const LoginResult(
          type: LoginResultType.error, message: "로그인에 실패했습니다.");
    }
    return const LoginResult(
        type: LoginResultType.error, message: "오류가 발생했습니다.");
  }

  Future<LoginResult> appleLogin() async {
    try {
      final response = await ref.watch(loginRepositoryProvider).appleLogin();
      if (response != null) {
        final data = response.data;
        state = state.copyWith(
          isLogin: true,
          email: data.claims,
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
        );
        return const LoginResult(
            type: LoginResultType.success, message: "로그인 성공");
      } else {
        throw Exception();
      }
    } catch (e) {
      Log.e(e.toString());
      return const LoginResult(
          type: LoginResultType.error, message: "오류가 발생했습니다.");
    }
  }
}
