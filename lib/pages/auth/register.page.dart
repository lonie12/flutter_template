import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/widgets/button.widget.dart';
import 'package:mainuse/widgets/divider_text.widget.dart';
import 'package:mainuse/widgets/social_button.widget.dart';
import 'package:mainuse/widgets/text_input.widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  onTap: () => Navigator.pop(context),
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
                  "Créer un compte",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 22, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                const TextInputUnbordered(
                  hintText: "Numéro de téléphone",
                  title: "Numéro de téléphone",
                  prefixicon: CarbonIcons.user,
                  keyType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                const TextInputUnbordered(
                  hintText: "Nom d'utilisateur",
                  title: "Nom d'utilisateur",
                  prefixicon: CarbonIcons.user,
                  keyType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                TextInputUnbordered(
                  hintText: "Mot de passe",
                  title: "Mot de passe",
                  prefixicon: Icons.lock_outline,
                  suffixicon: 1 == 1
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  isPasswordInput: true,
                  keyType: TextInputType.text,
                  action: () {},
                  obscure: true,
                ),
                const SizedBox(height: 30),
                ButtonWidget(
                  title: "Créer un compte",
                  onClick: () {},
                  backgroundColor: appSecondaryColor,
                  enabled: true,
                ),
                const SizedBox(height: 20),
                const DividerText(),
                const SizedBox(height: 20),
                SocialButton(
                  icon: logoGoogle,
                  title: "Connexion avec google",
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                SocialButton(
                  icon: logoGoogle,
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
}
