// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_rental.form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentCarState {
  StringFormz get days => throw _privateConstructorUsedError;
  StringFormz get city => throw _privateConstructorUsedError;
  IntegerFormz get duration => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get withDriver => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RentCarStateCopyWith<RentCarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentCarStateCopyWith<$Res> {
  factory $RentCarStateCopyWith(
          RentCarState value, $Res Function(RentCarState) then) =
      _$RentCarStateCopyWithImpl<$Res, RentCarState>;
  @useResult
  $Res call(
      {StringFormz days,
      StringFormz city,
      IntegerFormz duration,
      String description,
      bool withDriver,
      FormzSubmissionStatus status});
}

/// @nodoc
class _$RentCarStateCopyWithImpl<$Res, $Val extends RentCarState>
    implements $RentCarStateCopyWith<$Res> {
  _$RentCarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? city = null,
    Object? duration = null,
    Object? description = null,
    Object? withDriver = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as StringFormz,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringFormz,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as IntegerFormz,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      withDriver: null == withDriver
          ? _value.withDriver
          : withDriver // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentCarStateImplCopyWith<$Res>
    implements $RentCarStateCopyWith<$Res> {
  factory _$$RentCarStateImplCopyWith(
          _$RentCarStateImpl value, $Res Function(_$RentCarStateImpl) then) =
      __$$RentCarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFormz days,
      StringFormz city,
      IntegerFormz duration,
      String description,
      bool withDriver,
      FormzSubmissionStatus status});
}

/// @nodoc
class __$$RentCarStateImplCopyWithImpl<$Res>
    extends _$RentCarStateCopyWithImpl<$Res, _$RentCarStateImpl>
    implements _$$RentCarStateImplCopyWith<$Res> {
  __$$RentCarStateImplCopyWithImpl(
      _$RentCarStateImpl _value, $Res Function(_$RentCarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? city = null,
    Object? duration = null,
    Object? description = null,
    Object? withDriver = null,
    Object? status = null,
  }) {
    return _then(_$RentCarStateImpl(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as StringFormz,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringFormz,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as IntegerFormz,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      withDriver: null == withDriver
          ? _value.withDriver
          : withDriver // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$RentCarStateImpl implements _RentCarState {
  const _$RentCarStateImpl(
      {this.days = const StringFormz.pure(),
      this.city = const StringFormz.pure(),
      this.duration = const IntegerFormz.pure(),
      this.description = "",
      this.withDriver = false,
      this.status = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final StringFormz days;
  @override
  @JsonKey()
  final StringFormz city;
  @override
  @JsonKey()
  final IntegerFormz duration;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool withDriver;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'RentCarState(days: $days, city: $city, duration: $duration, description: $description, withDriver: $withDriver, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentCarStateImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.withDriver, withDriver) ||
                other.withDriver == withDriver) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, days, city, duration, description, withDriver, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentCarStateImplCopyWith<_$RentCarStateImpl> get copyWith =>
      __$$RentCarStateImplCopyWithImpl<_$RentCarStateImpl>(this, _$identity);
}

abstract class _RentCarState implements RentCarState {
  const factory _RentCarState(
      {final StringFormz days,
      final StringFormz city,
      final IntegerFormz duration,
      final String description,
      final bool withDriver,
      final FormzSubmissionStatus status}) = _$RentCarStateImpl;

  @override
  StringFormz get days;
  @override
  StringFormz get city;
  @override
  IntegerFormz get duration;
  @override
  String get description;
  @override
  bool get withDriver;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$RentCarStateImplCopyWith<_$RentCarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
