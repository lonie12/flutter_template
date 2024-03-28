// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFormState {
  EmailFormz get email => throw _privateConstructorUsedError;
  PasswordFormz get password => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {EmailFormz email, PasswordFormz password, FormzSubmissionStatus status});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormStateImplCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$LoginFormStateImplCopyWith(_$LoginFormStateImpl value,
          $Res Function(_$LoginFormStateImpl) then) =
      __$$LoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailFormz email, PasswordFormz password, FormzSubmissionStatus status});
}

/// @nodoc
class __$$LoginFormStateImplCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$LoginFormStateImpl>
    implements _$$LoginFormStateImplCopyWith<$Res> {
  __$$LoginFormStateImplCopyWithImpl(
      _$LoginFormStateImpl _value, $Res Function(_$LoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
  }) {
    return _then(_$LoginFormStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormz,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormz,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$LoginFormStateImpl implements _LoginFormState {
  const _$LoginFormStateImpl(
      {this.email = const EmailFormz.pure(),
      this.password = const PasswordFormz.pure(),
      this.status = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final EmailFormz email;
  @override
  @JsonKey()
  final PasswordFormz password;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'LoginFormState(email: $email, password: $password, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      __$$LoginFormStateImplCopyWithImpl<_$LoginFormStateImpl>(
          this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {final EmailFormz email,
      final PasswordFormz password,
      final FormzSubmissionStatus status}) = _$LoginFormStateImpl;

  @override
  EmailFormz get email;
  @override
  PasswordFormz get password;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckPhoneFormState {
  PhoneFormz get phone => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String get dialCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckPhoneFormStateCopyWith<CheckPhoneFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPhoneFormStateCopyWith<$Res> {
  factory $CheckPhoneFormStateCopyWith(
          CheckPhoneFormState value, $Res Function(CheckPhoneFormState) then) =
      _$CheckPhoneFormStateCopyWithImpl<$Res, CheckPhoneFormState>;
  @useResult
  $Res call({PhoneFormz phone, FormzSubmissionStatus status, String dialCode});
}

/// @nodoc
class _$CheckPhoneFormStateCopyWithImpl<$Res, $Val extends CheckPhoneFormState>
    implements $CheckPhoneFormStateCopyWith<$Res> {
  _$CheckPhoneFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? status = null,
    Object? dialCode = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneFormz,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPhoneFormStateImplCopyWith<$Res>
    implements $CheckPhoneFormStateCopyWith<$Res> {
  factory _$$CheckPhoneFormStateImplCopyWith(_$CheckPhoneFormStateImpl value,
          $Res Function(_$CheckPhoneFormStateImpl) then) =
      __$$CheckPhoneFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PhoneFormz phone, FormzSubmissionStatus status, String dialCode});
}

/// @nodoc
class __$$CheckPhoneFormStateImplCopyWithImpl<$Res>
    extends _$CheckPhoneFormStateCopyWithImpl<$Res, _$CheckPhoneFormStateImpl>
    implements _$$CheckPhoneFormStateImplCopyWith<$Res> {
  __$$CheckPhoneFormStateImplCopyWithImpl(_$CheckPhoneFormStateImpl _value,
      $Res Function(_$CheckPhoneFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? status = null,
    Object? dialCode = null,
  }) {
    return _then(_$CheckPhoneFormStateImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneFormz,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPhoneFormStateImpl implements _CheckPhoneFormState {
  const _$CheckPhoneFormStateImpl(
      {this.phone = const PhoneFormz.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.dialCode = "+228"});

  @override
  @JsonKey()
  final PhoneFormz phone;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final String dialCode;

  @override
  String toString() {
    return 'CheckPhoneFormState(phone: $phone, status: $status, dialCode: $dialCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPhoneFormStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, status, dialCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPhoneFormStateImplCopyWith<_$CheckPhoneFormStateImpl> get copyWith =>
      __$$CheckPhoneFormStateImplCopyWithImpl<_$CheckPhoneFormStateImpl>(
          this, _$identity);
}

abstract class _CheckPhoneFormState implements CheckPhoneFormState {
  const factory _CheckPhoneFormState(
      {final PhoneFormz phone,
      final FormzSubmissionStatus status,
      final String dialCode}) = _$CheckPhoneFormStateImpl;

  @override
  PhoneFormz get phone;
  @override
  FormzSubmissionStatus get status;
  @override
  String get dialCode;
  @override
  @JsonKey(ignore: true)
  _$$CheckPhoneFormStateImplCopyWith<_$CheckPhoneFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
