import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.g.dart';
part 'login_response_model.freezed.dart';

enum LoginResultType { success, failure, error }

class LoginResult {
  final LoginResultType type;
  final String message;

  const LoginResult({
    required this.type,
    required this.message,
  });
}

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    String? code,
    String? message,
    LoginDataModel? data,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    @Default("") String grantType,
    @Default("") String claims,
    @Default("") String accessToken,
    @Default("") String refreshToken,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}
