import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mainuse/helpers/text_input_validation.dart';

part 'auth.form.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(EmailFormz.pure()) EmailFormz email,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _LoginFormState;
}

@freezed
class CheckPhoneFormState with _$CheckPhoneFormState {
  const factory CheckPhoneFormState({
    @Default(PhoneFormz.pure()) PhoneFormz phone,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default("+228") String dialCode,
  }) = _CheckPhoneFormState;
}
