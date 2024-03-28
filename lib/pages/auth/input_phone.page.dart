import 'package:carbon_icons/carbon_icons.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/helpers/utils.dart';
import 'package:mainuse/viewmodels/auth.viewmodel.dart';
import 'package:mainuse/widgets/button.widget.dart';
import 'package:mainuse/widgets/divider_text.widget.dart';
import 'package:mainuse/widgets/social_button.widget.dart';
import 'package:mainuse/widgets/text_input.widget.dart';

class InputPhoneNumber extends ConsumerWidget {
  const InputPhoneNumber({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requested = ref.watch(authLoaderProvider);
    final phone = ref.watch(checkPhoneControllerProvider).phone;
    final dialCode = ref.watch(checkPhoneControllerProvider).dialCode;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90,
                    child: Image(image: AssetImage(logoFom)),
                  ),
                  Text(
                    "Bienvenue",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Connectez-vous ou Inscrivez-vous",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 17, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  TextInputUnbordered(
                    hintText: "Numéro de téléphone",
                    title: "Numéro de téléphone",
                    prefixicon: CarbonIcons.user,
                    keyType: TextInputType.phone,
                    onChanged: (value) => ref
                        .read(checkPhoneControllerProvider.notifier)
                        .updatePhone(value),
                    validator: (value) => phone.error?.getMessage(),
                    prefix: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CountryCodePicker(
                        onChanged: (country) => ref
                            .read(checkPhoneControllerProvider.notifier)
                            .updateDialCode(country.dialCode!),
                        initialSelection: dialCode,
                        countryFilter: [dialCode],
                        builder: (country) {
                          return Image.asset(
                            country!.flagUri!,
                            package: 'country_code_picker',
                            width: 20,
                            height: 20,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ButtonWidget(
                    enabled: ref.watch(checkPhoneControllerProvider).status ==
                        FormzSubmissionStatus.success,
                    loading: requested,
                    title: "Continuer",
                    onClick: () {
                      FocusScope.of(context).unfocus();
                      var result = ref
                          .read(userPhoneExistsProvider.notifier)
                          .checkPhone();
                      result.then(
                        (value) {
                          if (value != null && value.exists) {
                            ref.read(authPageProvider.notifier).update(1);
                          } else if (value != null && !value.exists) {
                            ref.read(authPageProvider.notifier).update(2);
                          } else {
                            showSnackBar(
                              context,
                              "Une erreur s'est produite. Veuillez réssayer",
                            );
                          }
                        },
                      );
                    },
                    // background: Helper.secondary,
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
                    icon: logoFacebook,
                    title: "Connexion avec facebook",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
