import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/helpers/utils.dart';
import 'package:mainuse/viewmodels/app.viewmodel.dart';
import 'package:mainuse/viewmodels/auth.viewmodel.dart';
import 'package:mainuse/widgets/button.widget.dart';
import 'package:mainuse/widgets/divider_text.widget.dart';
import 'package:mainuse/widgets/social_button.widget.dart';
import 'package:mainuse/widgets/text_input.widget.dart';

class LongInPage extends ConsumerWidget {
  const LongInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requested = ref.watch(authLoaderProvider);
    final password = ref.watch(loginControllerProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () => {},
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      CarbonIcons.arrow_left,
                      color: appSecondaryColor,
                      size: 26,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Se Connecter",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 22, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                TextInputUnbordered(
                  value: "+22890909090",
                  hintText: "Indiquez un numéro de téléphone",
                  title: "Numéro de téléphone",
                  prefixicon: CarbonIcons.user,
                  keyType: TextInputType.emailAddress,
                  onChanged: (value) {},
                  disabled: true,
                ),
                const SizedBox(height: 25),
                TextInputUnbordered(
                  hintText: "Mot de passe",
                  title: "Mot de passe",
                  prefixicon: Icons.lock_outline,
                  suffixicon: 1 == 1
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  isPasswordInput: true,
                  keyType: TextInputType.text,
                  onChanged: (value) => ref
                      .read(loginControllerProvider.notifier)
                      .updatePassword(value),
                  obscure: true,
                ),
                const SizedBox(height: 30),
                ButtonWidget(
                  loading: requested,
                  title: "Connexion",
                  onClick: () async {
                    FocusScope.of(context).unfocus();
                    var result = ref.read(logInProvider.notifier).login(
                          "+22890909090",
                        );
                    result.then(
                      (value) => {
                        switch (value!.error) {
                          true => showSnackBar(context, value.message),
                          false => ref
                              .watch(loggedInProvider.notifier)
                              .updateState(true),
                        }
                      },
                    );
                  },
                  backgroundColor: appSecondaryColor,
                  enabled: password.isNotEmpty,
                ),
                const SizedBox(height: 20),
                Text(password),
                const DividerText(),
                const SizedBox(height: 20),
                SocialButton(
                  icon: logoGoogle,
                  title: "Connexion avec google",
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                SocialButton(
                  icon: logoFacebook,
                  title: "Connexion avec facebook",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // DateTime? currentBackPressTime;
  // Future<bool> onWillPop() async {
  //   DateTime now = DateTime.now();
  //   if (currentBackPressTime == null ||
  //       now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
  //     currentBackPressTime = now;
  //     // Fluttertoast.showToast(msg: Helper.exitwarning);
  //     return Future.value(true);
  //   }
  //   return Future.value(false);
  // }
}
