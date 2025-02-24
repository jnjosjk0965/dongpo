import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.g.dart';
part 'login_request_model.freezed.dart';

@freezed
class KakaoLoginRequest with _$KakaoLoginRequest {
  const factory KakaoLoginRequest({
    String? token, // 소셜 플랫폼 토큰
  }) = _KakaoLoginRequest;

  factory KakaoLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$KakaoLoginRequestFromJson(json);
}

@freezed
class AppleLoginRequest with _$AppleLoginRequest {
  const factory AppleLoginRequest({
    String? identityToken,
    String? authorizationCode,
  }) = _AppleLoginRequest;

  factory AppleLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AppleLoginRequestFromJson(json);
}

@freezed
class AppleSignUpRequest with _$AppleSignUpRequest {
  const factory AppleSignUpRequest({
    String? nickname,
    String? birthday,
    String? gender,
    String? socialId,
    String? email,
    @Default(false) bool isServiceTermsAgreed,
    @Default(false) bool isMarketingTermsAgreed,
  }) = _AppleSignUpRequest;

  factory AppleSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$AppleSignUpRequestFromJson(json);
}

@freezed
class RefreshRequest with _$RefreshRequest {
  const factory RefreshRequest({
    String? refreshToken,
  }) = _RefreshRequest;

  factory RefreshRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshRequestFromJson(json);
}
