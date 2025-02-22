// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_store_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddStoreState {
  NaverMapController? get controller => throw _privateConstructorUsedError;
  NLatLng? get position => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  /// Create a copy of AddStoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddStoreStateCopyWith<AddStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoreStateCopyWith<$Res> {
  factory $AddStoreStateCopyWith(
          AddStoreState value, $Res Function(AddStoreState) then) =
      _$AddStoreStateCopyWithImpl<$Res, AddStoreState>;
  @useResult
  $Res call(
      {NaverMapController? controller, NLatLng? position, String? address});
}

/// @nodoc
class _$AddStoreStateCopyWithImpl<$Res, $Val extends AddStoreState>
    implements $AddStoreStateCopyWith<$Res> {
  _$AddStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddStoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? position = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as NaverMapController?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as NLatLng?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStoreStateImplCopyWith<$Res>
    implements $AddStoreStateCopyWith<$Res> {
  factory _$$AddStoreStateImplCopyWith(
          _$AddStoreStateImpl value, $Res Function(_$AddStoreStateImpl) then) =
      __$$AddStoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NaverMapController? controller, NLatLng? position, String? address});
}

/// @nodoc
class __$$AddStoreStateImplCopyWithImpl<$Res>
    extends _$AddStoreStateCopyWithImpl<$Res, _$AddStoreStateImpl>
    implements _$$AddStoreStateImplCopyWith<$Res> {
  __$$AddStoreStateImplCopyWithImpl(
      _$AddStoreStateImpl _value, $Res Function(_$AddStoreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddStoreState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? position = freezed,
    Object? address = freezed,
  }) {
    return _then(_$AddStoreStateImpl(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as NaverMapController?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as NLatLng?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddStoreStateImpl implements _AddStoreState {
  const _$AddStoreStateImpl({this.controller, this.position, this.address});

  @override
  final NaverMapController? controller;
  @override
  final NLatLng? position;
  @override
  final String? address;

  @override
  String toString() {
    return 'AddStoreState(controller: $controller, position: $position, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoreStateImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, position, address);

  /// Create a copy of AddStoreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoreStateImplCopyWith<_$AddStoreStateImpl> get copyWith =>
      __$$AddStoreStateImplCopyWithImpl<_$AddStoreStateImpl>(this, _$identity);
}

abstract class _AddStoreState implements AddStoreState {
  const factory _AddStoreState(
      {final NaverMapController? controller,
      final NLatLng? position,
      final String? address}) = _$AddStoreStateImpl;

  @override
  NaverMapController? get controller;
  @override
  NLatLng? get position;
  @override
  String? get address;

  /// Create a copy of AddStoreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStoreStateImplCopyWith<_$AddStoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
