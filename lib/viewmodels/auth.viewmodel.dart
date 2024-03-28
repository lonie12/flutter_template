import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:mainuse/helpers/hive_config.dart';
import 'package:mainuse/helpers/text_input_validation.dart';
import 'package:mainuse/models/auth.model.dart';
import 'package:mainuse/models/dtos/auth.dto.dart';
import 'package:mainuse/models/user.model.dart';
import 'package:mainuse/models/view.model.dart';
import 'package:mainuse/repositories/auth.repository.dart';
import 'package:mainuse/services/forms/auth.form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.viewmodel.g.dart';

@riverpod
class AuthPage extends _$AuthPage {
  @override
  int build() => 0;

  void update(int value) => state = value;
}

@riverpod
class AuthLoader extends _$AuthLoader {
  @override
  bool build() => false;

  void isRequested() {
    state = true;
  }

  void dispose() {
    state = false;
  }
}

@riverpod
class RegisterController extends _$RegisterController {
  @override
  LoginFormState build() => const LoginFormState();

  FormzSubmissionStatus validate({EmailFormz? email, PasswordFormz? password}) {
    return Formz.validate([email ?? state.email, password ?? state.password])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }

  void updateEmail(String value) {
    final email = EmailFormz.dirty(value);
    state = state.copyWith(email: email, status: validate(email: email));
  }

  void updatePassword(String value) {
    final password = PasswordFormz.dirty(value);
    state = state.copyWith(
      password: password,
      status: validate(password: password),
    );
  }
}

@riverpod
class CheckPhoneController extends _$CheckPhoneController {
  @override
  CheckPhoneFormState build() => const CheckPhoneFormState();

  FormzSubmissionStatus validate({PhoneFormz? phone}) {
    return Formz.validate([phone ?? state.phone])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
  }

  void updateDialCode(String value) {
    state = state.copyWith(dialCode: value);
  }

  void updatePhone(String value) {
    final phone = PhoneFormz.dirty(value);
    state = state.copyWith(phone: phone, status: validate(phone: phone));
  }
}

@riverpod
class LoginController extends _$LoginController {
  @override
  String build() => "";

  void updatePassword(String value) {
    state = value;
  }
}

@riverpod
class UserPhoneExists extends _$UserPhoneExists {
  @override
  bool build() => false;

  Future<PhoneExists?> checkPhone() async {
    try {
      ref.read(authLoaderProvider.notifier).isRequested();
      var phoneNumber = ref.watch(checkPhoneControllerProvider).phone;
      var dialCode = ref.watch(checkPhoneControllerProvider).dialCode;
      var dtoValue = CheckPhoneDto(phonenumber: dialCode + phoneNumber.value);
      var result = await ref.read(authRepositoryProvider).checkPhone(dtoValue);
      ref.read(authLoaderProvider.notifier).dispose();
      if (!result.error) {
        var phoneExists = PhoneExists.fromJson(result.data);
        return phoneExists;
      }
      return null;
    } catch (e) {
      debugPrint(e.toString());
      ref.read(authLoaderProvider.notifier).dispose();
      return null;
    }
  }
}

@riverpod
class LogIn extends _$LogIn {
  @override
  User? build() => null;

  Future<ViewModel?> login(String phone) async {
    try {
      ref.read(authLoaderProvider.notifier).isRequested();
      final password = ref.watch(loginControllerProvider);
      var loginDto = LoginDto(phonenumber: phone, password: password);
      var result = await ref.read(authRepositoryProvider).login(loginDto);
      ref.read(authLoaderProvider.notifier).dispose();
      if (!result.error) {
        var user = User.fromJson(result.data);
        HiveLocal.box.put("user", user);
        return ViewModel<User>(error: false, message: "ok", data: user);
      }
      return null;
    } catch (e) {
      ref.read(authLoaderProvider.notifier).dispose();
      if (e is DioException && e.response!.statusCode == 401) {
        return const ViewModel(
          error: true,
          message: "Identifiants incorrects",
          data: {},
        );
      } else {
        return const ViewModel(error: true, data: {});
      }
    }
  }
}
