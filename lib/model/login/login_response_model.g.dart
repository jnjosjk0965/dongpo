// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$LoginDataModelImpl _$$LoginDataModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataModelImpl(
      grantType: json['grantType'] as String? ?? "",
      claims: json['claims'] as String? ?? "",
      accessToken: json['accessToken'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
    );

Map<String, dynamic> _$$LoginDataModelImplToJson(
        _$LoginDataModelImpl instance) =>
    <String, dynamic>{
      'grantType': instance.grantType,
      'claims': instance.claims,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
