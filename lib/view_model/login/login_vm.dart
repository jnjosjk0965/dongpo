import 'package:dongpo/model/login/login_request_model.dart';
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

@Riverpod()
class LoginVm extends _$LoginVm {
  @override
  LoginState build() {
    return LoginState.init();
  }

  Future<bool> kakaoLogin(KakaoLoginRequest body) async {
    final response = await ref.watch(loginRepositoryProvider).kakaoLogin(body);
    if (response != null) {
      final data = response.data;
      state = state.copyWith(
        isLogin: true,
        email: data.claims,
        accessToken: data.accessToken,
        refreshToken: data.refreshToken,
      );
    }
    return false;
  }
}
