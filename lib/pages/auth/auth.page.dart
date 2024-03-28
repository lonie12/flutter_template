import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mainuse/pages/auth/input_phone.page.dart';
import 'package:mainuse/pages/auth/login.page.dart';
import 'package:mainuse/pages/auth/register.page.dart';
import 'package:mainuse/viewmodels/auth.viewmodel.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(context, ref) {
    var pageState = ref.watch(authPageProvider);
    return switch (pageState) {
      0 => const InputPhoneNumber(),
      1 => const LongInPage(),
      2 => const RegisterPage(),
      int() => throw UnimplementedError(),
    };
  }
}
