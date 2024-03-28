import 'package:formz/formz.dart';
import 'package:mainuse/helpers/utils.dart';

// Email Formz
enum EmailValidationError {
  empty,
  invalid,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Email can\'t be empty';
      case invalid:
        return 'Invalid email';
    }
  }
}

// Email Formz
class EmailFormz extends FormzInput<String, EmailValidationError> {
  const EmailFormz.pure() : super.pure('');

  const EmailFormz.dirty(super.value) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    if (value.length < 4) return EmailValidationError.empty;
    if (!EmailSubmitRegexValidator().isValid(value)) {
      return EmailValidationError.invalid;
    }
    return null;
  }
}

// Password Formz
enum PasswordValidationError {
  empty,
  tooShort,
  invalid,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Password can\'t be empty';
      case tooShort:
        return 'Password is too short';
      case invalid:
        return 'Must contain at least 1 characters and 1 symbol';
    }
  }
}

// Password Formz
class PasswordFormz extends FormzInput<String, PasswordValidationError> {
  const PasswordFormz.pure() : super.pure('');

  const PasswordFormz.dirty(super.value) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (!NonEmptyStringValidator().isValid(value)) {
      return PasswordValidationError.empty;
    }
    if (!MinLengthStringValidator(4).isValid(value)) {
      return PasswordValidationError.tooShort;
    }
    if (!PasswordSubmitRegexValidator().isValid(value)) {
      return PasswordValidationError.invalid;
    }
    return null;
  }
}

// Phone Formz
enum PhoneValidationError {
  empty,
  invalid,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Phone number can\'t be empty';
      case invalid:
        return 'Phone number is Invalid';
    }
  }
}

// Password Formz
class PhoneFormz extends FormzInput<String, PhoneValidationError> {
  const PhoneFormz.pure() : super.pure('');

  const PhoneFormz.dirty(super.value) : super.dirty();

  @override
  PhoneValidationError? validator(String value) {
    if (!NonEmptyStringValidator().isValid(value)) {
      return PhoneValidationError.empty;
    }
    if (!PhoneSubmitRegexValidator().isValid(value)) {
      return PhoneValidationError.invalid;
    }
    return null;
  }
}

// Simple String
enum StringValidatorError {
  empty,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Field can\'t be empty';
    }
  }
}

// Password Formz
class StringFormz extends FormzInput<String, StringValidatorError> {
  const StringFormz.pure({this.minLength}) : super.pure('');

  const StringFormz.dirty(
    super.value, {
    this.minLength,
  }) : super.dirty();

  final int? minLength;

  @override
  StringValidatorError? validator(String value) {
    // if (!NonEmptyStringValidator().isValid(value)) {
    //   return StringValidatorError.empty;
    // }
    return null;
  }
}

// Simple String
enum IntegerValidatorError {
  empty,
  invalid,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Field can\'t be empty';
      case invalid:
        return 'Invalid value';
    }
  }
}

// Password Formz
class IntegerFormz extends FormzInput<String, IntegerValidatorError> {
  const IntegerFormz.pure() : super.pure("");

  const IntegerFormz.dirty(super.value) : super.dirty();

  @override
  IntegerValidatorError? validator(String value) {
    // if (!IntegerValidator(value: value).isValid(value)) {
    //   return IntegerValidatorError.invalid;
    // }
    if (!NonEmptyIntegerValidator(value: value).isValid(value)) {
      return IntegerValidatorError.empty;
    }
    return null;
  }
}
