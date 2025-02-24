// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KakaoLoginRequest _$KakaoLoginRequestFromJson(Map<String, dynamic> json) {
  return _KakaoLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$KakaoLoginRequest {
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this KakaoLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KakaoLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KakaoLoginRequestCopyWith<KakaoLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoLoginRequestCopyWith<$Res> {
  factory $KakaoLoginRequestCopyWith(
          KakaoLoginRequest value, $Res Function(KakaoLoginRequest) then) =
      _$KakaoLoginRequestCopyWithImpl<$Res, KakaoLoginRequest>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$KakaoLoginRequestCopyWithImpl<$Res, $Val extends KakaoLoginRequest>
    implements $KakaoLoginRequestCopyWith<$Res> {
  _$KakaoLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KakaoLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KakaoLoginRequestImplCopyWith<$Res>
    implements $KakaoLoginRequestCopyWith<$Res> {
  factory _$$KakaoLoginRequestImplCopyWith(_$KakaoLoginRequestImpl value,
          $Res Function(_$KakaoLoginRequestImpl) then) =
      __$$KakaoLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$KakaoLoginRequestImplCopyWithImpl<$Res>
    extends _$KakaoLoginRequestCopyWithImpl<$Res, _$KakaoLoginRequestImpl>
    implements _$$KakaoLoginRequestImplCopyWith<$Res> {
  __$$KakaoLoginRequestImplCopyWithImpl(_$KakaoLoginRequestImpl _value,
      $Res Function(_$KakaoLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of KakaoLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$KakaoLoginRequestImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KakaoLoginRequestImpl implements _KakaoLoginRequest {
  const _$KakaoLoginRequestImpl({this.token});

  factory _$KakaoLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$KakaoLoginRequestImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'KakaoLoginRequest(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KakaoLoginRequestImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of KakaoLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KakaoLoginRequestImplCopyWith<_$KakaoLoginRequestImpl> get copyWith =>
      __$$KakaoLoginRequestImplCopyWithImpl<_$KakaoLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KakaoLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _KakaoLoginRequest implements KakaoLoginRequest {
  const factory _KakaoLoginRequest({final String? token}) =
      _$KakaoLoginRequestImpl;

  factory _KakaoLoginRequest.fromJson(Map<String, dynamic> json) =
      _$KakaoLoginRequestImpl.fromJson;

  @override
  String? get token;

  /// Create a copy of KakaoLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KakaoLoginRequestImplCopyWith<_$KakaoLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppleLoginRequest _$AppleLoginRequestFromJson(Map<String, dynamic> json) {
  return _AppleLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$AppleLoginRequest {
  String? get identityToken => throw _privateConstructorUsedError;
  String? get authorizationCode => throw _privateConstructorUsedError;

  /// Serializes this AppleLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppleLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppleLoginRequestCopyWith<AppleLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppleLoginRequestCopyWith<$Res> {
  factory $AppleLoginRequestCopyWith(
          AppleLoginRequest value, $Res Function(AppleLoginRequest) then) =
      _$AppleLoginRequestCopyWithImpl<$Res, AppleLoginRequest>;
  @useResult
  $Res call({String? identityToken, String? authorizationCode});
}

/// @nodoc
class _$AppleLoginRequestCopyWithImpl<$Res, $Val extends AppleLoginRequest>
    implements $AppleLoginRequestCopyWith<$Res> {
  _$AppleLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppleLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityToken = freezed,
    Object? authorizationCode = freezed,
  }) {
    return _then(_value.copyWith(
      identityToken: freezed == identityToken
          ? _value.identityToken
          : identityToken // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationCode: freezed == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppleLoginRequestImplCopyWith<$Res>
    implements $AppleLoginRequestCopyWith<$Res> {
  factory _$$AppleLoginRequestImplCopyWith(_$AppleLoginRequestImpl value,
          $Res Function(_$AppleLoginRequestImpl) then) =
      __$$AppleLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identityToken, String? authorizationCode});
}

/// @nodoc
class __$$AppleLoginRequestImplCopyWithImpl<$Res>
    extends _$AppleLoginRequestCopyWithImpl<$Res, _$AppleLoginRequestImpl>
    implements _$$AppleLoginRequestImplCopyWith<$Res> {
  __$$AppleLoginRequestImplCopyWithImpl(_$AppleLoginRequestImpl _value,
      $Res Function(_$AppleLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppleLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityToken = freezed,
    Object? authorizationCode = freezed,
  }) {
    return _then(_$AppleLoginRequestImpl(
      identityToken: freezed == identityToken
          ? _value.identityToken
          : identityToken // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationCode: freezed == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppleLoginRequestImpl implements _AppleLoginRequest {
  const _$AppleLoginRequestImpl({this.identityToken, this.authorizationCode});

  factory _$AppleLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppleLoginRequestImplFromJson(json);

  @override
  final String? identityToken;
  @override
  final String? authorizationCode;

  @override
  String toString() {
    return 'AppleLoginRequest(identityToken: $identityToken, authorizationCode: $authorizationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppleLoginRequestImpl &&
            (identical(other.identityToken, identityToken) ||
                other.identityToken == identityToken) &&
            (identical(other.authorizationCode, authorizationCode) ||
                other.authorizationCode == authorizationCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identityToken, authorizationCode);

  /// Create a copy of AppleLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppleLoginRequestImplCopyWith<_$AppleLoginRequestImpl> get copyWith =>
      __$$AppleLoginRequestImplCopyWithImpl<_$AppleLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppleLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _AppleLoginRequest implements AppleLoginRequest {
  const factory _AppleLoginRequest(
      {final String? identityToken,
      final String? authorizationCode}) = _$AppleLoginRequestImpl;

  factory _AppleLoginRequest.fromJson(Map<String, dynamic> json) =
      _$AppleLoginRequestImpl.fromJson;

  @override
  String? get identityToken;
  @override
  String? get authorizationCode;

  /// Create a copy of AppleLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppleLoginRequestImplCopyWith<_$AppleLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppleSignUpRequest _$AppleSignUpRequestFromJson(Map<String, dynamic> json) {
  return _AppleSignUpRequest.fromJson(json);
}

/// @nodoc
mixin _$AppleSignUpRequest {
  String? get nickname => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get socialId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get isServiceTermsAgreed => throw _privateConstructorUsedError;
  bool get isMarketingTermsAgreed => throw _privateConstructorUsedError;

  /// Serializes this AppleSignUpRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppleSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppleSignUpRequestCopyWith<AppleSignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppleSignUpRequestCopyWith<$Res> {
  factory $AppleSignUpRequestCopyWith(
          AppleSignUpRequest value, $Res Function(AppleSignUpRequest) then) =
      _$AppleSignUpRequestCopyWithImpl<$Res, AppleSignUpRequest>;
  @useResult
  $Res call(
      {String? nickname,
      String? birthday,
      String? gender,
      String? socialId,
      String? email,
      bool isServiceTermsAgreed,
      bool isMarketingTermsAgreed});
}

/// @nodoc
class _$AppleSignUpRequestCopyWithImpl<$Res, $Val extends AppleSignUpRequest>
    implements $AppleSignUpRequestCopyWith<$Res> {
  _$AppleSignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppleSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? socialId = freezed,
    Object? email = freezed,
    Object? isServiceTermsAgreed = null,
    Object? isMarketingTermsAgreed = null,
  }) {
    return _then(_value.copyWith(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isServiceTermsAgreed: null == isServiceTermsAgreed
          ? _value.isServiceTermsAgreed
          : isServiceTermsAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMarketingTermsAgreed: null == isMarketingTermsAgreed
          ? _value.isMarketingTermsAgreed
          : isMarketingTermsAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppleSignUpRequestImplCopyWith<$Res>
    implements $AppleSignUpRequestCopyWith<$Res> {
  factory _$$AppleSignUpRequestImplCopyWith(_$AppleSignUpRequestImpl value,
          $Res Function(_$AppleSignUpRequestImpl) then) =
      __$$AppleSignUpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nickname,
      String? birthday,
      String? gender,
      String? socialId,
      String? email,
      bool isServiceTermsAgreed,
      bool isMarketingTermsAgreed});
}

/// @nodoc
class __$$AppleSignUpRequestImplCopyWithImpl<$Res>
    extends _$AppleSignUpRequestCopyWithImpl<$Res, _$AppleSignUpRequestImpl>
    implements _$$AppleSignUpRequestImplCopyWith<$Res> {
  __$$AppleSignUpRequestImplCopyWithImpl(_$AppleSignUpRequestImpl _value,
      $Res Function(_$AppleSignUpRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppleSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? socialId = freezed,
    Object? email = freezed,
    Object? isServiceTermsAgreed = null,
    Object? isMarketingTermsAgreed = null,
  }) {
    return _then(_$AppleSignUpRequestImpl(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isServiceTermsAgreed: null == isServiceTermsAgreed
          ? _value.isServiceTermsAgreed
          : isServiceTermsAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
      isMarketingTermsAgreed: null == isMarketingTermsAgreed
          ? _value.isMarketingTermsAgreed
          : isMarketingTermsAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppleSignUpRequestImpl implements _AppleSignUpRequest {
  const _$AppleSignUpRequestImpl(
      {this.nickname,
      this.birthday,
      this.gender,
      this.socialId,
      this.email,
      this.isServiceTermsAgreed = false,
      this.isMarketingTermsAgreed = false});

  factory _$AppleSignUpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppleSignUpRequestImplFromJson(json);

  @override
  final String? nickname;
  @override
  final String? birthday;
  @override
  final String? gender;
  @override
  final String? socialId;
  @override
  final String? email;
  @override
  @JsonKey()
  final bool isServiceTermsAgreed;
  @override
  @JsonKey()
  final bool isMarketingTermsAgreed;

  @override
  String toString() {
    return 'AppleSignUpRequest(nickname: $nickname, birthday: $birthday, gender: $gender, socialId: $socialId, email: $email, isServiceTermsAgreed: $isServiceTermsAgreed, isMarketingTermsAgreed: $isMarketingTermsAgreed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppleSignUpRequestImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isServiceTermsAgreed, isServiceTermsAgreed) ||
                other.isServiceTermsAgreed == isServiceTermsAgreed) &&
            (identical(other.isMarketingTermsAgreed, isMarketingTermsAgreed) ||
                other.isMarketingTermsAgreed == isMarketingTermsAgreed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, birthday, gender,
      socialId, email, isServiceTermsAgreed, isMarketingTermsAgreed);

  /// Create a copy of AppleSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppleSignUpRequestImplCopyWith<_$AppleSignUpRequestImpl> get copyWith =>
      __$$AppleSignUpRequestImplCopyWithImpl<_$AppleSignUpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppleSignUpRequestImplToJson(
      this,
    );
  }
}

abstract class _AppleSignUpRequest implements AppleSignUpRequest {
  const factory _AppleSignUpRequest(
      {final String? nickname,
      final String? birthday,
      final String? gender,
      final String? socialId,
      final String? email,
      final bool isServiceTermsAgreed,
      final bool isMarketingTermsAgreed}) = _$AppleSignUpRequestImpl;

  factory _AppleSignUpRequest.fromJson(Map<String, dynamic> json) =
      _$AppleSignUpRequestImpl.fromJson;

  @override
  String? get nickname;
  @override
  String? get birthday;
  @override
  String? get gender;
  @override
  String? get socialId;
  @override
  String? get email;
  @override
  bool get isServiceTermsAgreed;
  @override
  bool get isMarketingTermsAgreed;

  /// Create a copy of AppleSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppleSignUpRequestImplCopyWith<_$AppleSignUpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshRequest _$RefreshRequestFromJson(Map<String, dynamic> json) {
  return _RefreshRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshRequest {
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshRequestCopyWith<RefreshRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshRequestCopyWith<$Res> {
  factory $RefreshRequestCopyWith(
          RefreshRequest value, $Res Function(RefreshRequest) then) =
      _$RefreshRequestCopyWithImpl<$Res, RefreshRequest>;
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class _$RefreshRequestCopyWithImpl<$Res, $Val extends RefreshRequest>
    implements $RefreshRequestCopyWith<$Res> {
  _$RefreshRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshRequestImplCopyWith<$Res>
    implements $RefreshRequestCopyWith<$Res> {
  factory _$$RefreshRequestImplCopyWith(_$RefreshRequestImpl value,
          $Res Function(_$RefreshRequestImpl) then) =
      __$$RefreshRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class __$$RefreshRequestImplCopyWithImpl<$Res>
    extends _$RefreshRequestCopyWithImpl<$Res, _$RefreshRequestImpl>
    implements _$$RefreshRequestImplCopyWith<$Res> {
  __$$RefreshRequestImplCopyWithImpl(
      _$RefreshRequestImpl _value, $Res Function(_$RefreshRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_$RefreshRequestImpl(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshRequestImpl implements _RefreshRequest {
  const _$RefreshRequestImpl({this.refreshToken});

  factory _$RefreshRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshRequestImplFromJson(json);

  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'RefreshRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of RefreshRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshRequestImplCopyWith<_$RefreshRequestImpl> get copyWith =>
      __$$RefreshRequestImplCopyWithImpl<_$RefreshRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshRequestImplToJson(
      this,
    );
  }
}

abstract class _RefreshRequest implements RefreshRequest {
  const factory _RefreshRequest({final String? refreshToken}) =
      _$RefreshRequestImpl;

  factory _RefreshRequest.fromJson(Map<String, dynamic> json) =
      _$RefreshRequestImpl.fromJson;

  @override
  String? get refreshToken;

  /// Create a copy of RefreshRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshRequestImplCopyWith<_$RefreshRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
