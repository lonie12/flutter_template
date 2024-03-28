// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewModel<T> {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewModelCopyWith<T, ViewModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModelCopyWith<T, $Res> {
  factory $ViewModelCopyWith(
          ViewModel<T> value, $Res Function(ViewModel<T>) then) =
      _$ViewModelCopyWithImpl<T, $Res, ViewModel<T>>;
  @useResult
  $Res call({bool error, String message, T data});
}

/// @nodoc
class _$ViewModelCopyWithImpl<T, $Res, $Val extends ViewModel<T>>
    implements $ViewModelCopyWith<T, $Res> {
  _$ViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewModelImplCopyWith<T, $Res>
    implements $ViewModelCopyWith<T, $Res> {
  factory _$$ViewModelImplCopyWith(
          _$ViewModelImpl<T> value, $Res Function(_$ViewModelImpl<T>) then) =
      __$$ViewModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool error, String message, T data});
}

/// @nodoc
class __$$ViewModelImplCopyWithImpl<T, $Res>
    extends _$ViewModelCopyWithImpl<T, $Res, _$ViewModelImpl<T>>
    implements _$$ViewModelImplCopyWith<T, $Res> {
  __$$ViewModelImplCopyWithImpl(
      _$ViewModelImpl<T> _value, $Res Function(_$ViewModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$ViewModelImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ViewModelImpl<T> implements _ViewModel<T> {
  const _$ViewModelImpl(
      {required this.error,
      this.message = "Une erreur s'est produite. Réessayer",
      required this.data});

  @override
  final bool error;
  @override
  @JsonKey()
  final String message;
  @override
  final T data;

  @override
  String toString() {
    return 'ViewModel<$T>(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewModelImpl<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewModelImplCopyWith<T, _$ViewModelImpl<T>> get copyWith =>
      __$$ViewModelImplCopyWithImpl<T, _$ViewModelImpl<T>>(this, _$identity);
}

abstract class _ViewModel<T> implements ViewModel<T> {
  const factory _ViewModel(
      {required final bool error,
      final String message,
      required final T data}) = _$ViewModelImpl<T>;

  @override
  bool get error;
  @override
  String get message;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$ViewModelImplCopyWith<T, _$ViewModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
