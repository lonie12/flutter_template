import 'package:mainuse/repositories/auth.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app.viewmodel.g.dart';

@riverpod
class LoggedIn extends _$LoggedIn {
  @override
  bool build() => ref.read(authRepositoryProvider).isUserLoggedIn();

  updateState(bool value) => state = value;
}

// @riverpod
// class AppUser extends _$AppUser {
//   @override
//   bool? build() => null;

//   updateState() {
//     print("Yoooo11111");
//     var user = HiveLocal.box.get("user");
//     if (user is User) {
//       HiveLocal.bindUser(user);
//       state = true;
//     } else {
//       state = false;
//     }
//   }
// }

// @riverpod
// Stream<bool> isUserLoggedIn(IsUserLoggedInRef ref) async* {
//   bool? enabled;
//   await ref.read(appUserProvider.notifier).updateState();
//   var appState = ref.watch(appUserProvider);
//   while (true) {
//     print("Yoooo");
//     try {
//       bool? isEnabled = appState;
//       if (enabled != isEnabled) {
//         enabled = isEnabled;
//         yield enabled!;
//       }
//     } catch (error) {}
//     await Future.delayed(const Duration(seconds: 5));
//   }
// }
