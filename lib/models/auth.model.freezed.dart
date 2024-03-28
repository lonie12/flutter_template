// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhoneExists _$PhoneExistsFromJson(Map<String, dynamic> json) {
  return _PhoneExists.fromJson(json);
}

/// @nodoc
mixin _$PhoneExists {
  bool get exists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneExistsCopyWith<PhoneExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneExistsCopyWith<$Res> {
  factory $PhoneExistsCopyWith(
          PhoneExists value, $Res Function(PhoneExists) then) =
      _$PhoneExistsCopyWithImpl<$Res, PhoneExists>;
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class _$PhoneExistsCopyWithImpl<$Res, $Val extends PhoneExists>
    implements $PhoneExistsCopyWith<$Res> {
  _$PhoneExistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exists = null,
  }) {
    return _then(_value.copyWith(
      exists: null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneExistsImplCopyWith<$Res>
    implements $PhoneExistsCopyWith<$Res> {
  factory _$$PhoneExistsImplCopyWith(
          _$PhoneExistsImpl value, $Res Function(_$PhoneExistsImpl) then) =
      __$$PhoneExistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class __$$PhoneExistsImplCopyWithImpl<$Res>
    extends _$PhoneExistsCopyWithImpl<$Res, _$PhoneExistsImpl>
    implements _$$PhoneExistsImplCopyWith<$Res> {
  __$$PhoneExistsImplCopyWithImpl(
      _$PhoneExistsImpl _value, $Res Function(_$PhoneExistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exists = null,
  }) {
    return _then(_$PhoneExistsImpl(
      exists: null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneExistsImpl implements _PhoneExists {
  const _$PhoneExistsImpl({required this.exists});

  factory _$PhoneExistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneExistsImplFromJson(json);

  @override
  final bool exists;

  @override
  String toString() {
    return 'PhoneExists(exists: $exists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneExistsImpl &&
            (identical(other.exists, exists) || other.exists == exists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, exists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneExistsImplCopyWith<_$PhoneExistsImpl> get copyWith =>
      __$$PhoneExistsImplCopyWithImpl<_$PhoneExistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneExistsImplToJson(
      this,
    );
  }
}

abstract class _PhoneExists implements PhoneExists {
  const factory _PhoneExists({required final bool exists}) = _$PhoneExistsImpl;

  factory _PhoneExists.fromJson(Map<String, dynamic> json) =
      _$PhoneExistsImpl.fromJson;

  @override
  bool get exists;
  @override
  @JsonKey(ignore: true)
  _$$PhoneExistsImplCopyWith<_$PhoneExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
