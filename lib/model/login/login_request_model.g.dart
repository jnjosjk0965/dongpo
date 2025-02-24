// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KakaoLoginRequestImpl _$$KakaoLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$KakaoLoginRequestImpl(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$KakaoLoginRequestImplToJson(
        _$KakaoLoginRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$AppleLoginRequestImpl _$$AppleLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AppleLoginRequestImpl(
      identityToken: json['identityToken'] as String?,
      authorizationCode: json['authorizationCode'] as String?,
    );

Map<String, dynamic> _$$AppleLoginRequestImplToJson(
        _$AppleLoginRequestImpl instance) =>
    <String, dynamic>{
      'identityToken': instance.identityToken,
      'authorizationCode': instance.authorizationCode,
    };

_$AppleSignUpRequestImpl _$$AppleSignUpRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AppleSignUpRequestImpl(
      nickname: json['nickname'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      socialId: json['socialId'] as String?,
      email: json['email'] as String?,
      isServiceTermsAgreed: json['isServiceTermsAgreed'] as bool? ?? false,
      isMarketingTermsAgreed: json['isMarketingTermsAgreed'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppleSignUpRequestImplToJson(
        _$AppleSignUpRequestImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'socialId': instance.socialId,
      'email': instance.email,
      'isServiceTermsAgreed': instance.isServiceTermsAgreed,
      'isMarketingTermsAgreed': instance.isMarketingTermsAgreed,
    };

_$RefreshRequestImpl _$$RefreshRequestImplFromJson(Map<String, dynamic> json) =>
    _$RefreshRequestImpl(
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$RefreshRequestImplToJson(
        _$RefreshRequestImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };
