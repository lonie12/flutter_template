import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mainuse/bottom_navigation.dart';
import 'package:mainuse/pages/auth/auth.page.dart';
import 'package:mainuse/viewmodels/app.viewmodel.dart';

class Fomapp extends ConsumerWidget {
  const Fomapp({super.key});

  @override
  Widget build(context, ref) {
    var appState = ref.watch(loggedInProvider);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {}
        showBackDialog(context);
      },
      child: appState ? const BottomBar() : const AuthPage(),
    );
  }

  void showBackDialog(BuildContext context) async {
    final bool shouldPop = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('EXIT APP', style: Theme.of(context).textTheme.titleSmall),
        content: Text('Are you sure you want to exit the app?',
            style: Theme.of(context).textTheme.bodyMedium),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child:
                Text('DISMISS', style: Theme.of(context).textTheme.labelSmall),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text('EXIT', style: Theme.of(context).textTheme.labelSmall),
          ),
        ],
      ),
    );

    if (shouldPop) {
      SystemNavigator.pop();
    }
  }
}
