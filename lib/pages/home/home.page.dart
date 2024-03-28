import 'package:flutter/material.dart' hide Slider, SearchBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/pages/home/home_services_section.dart';
import 'package:mainuse/pages/home/home_slide_secton.dart';
import 'package:mainuse/pages/home/home_wallet_section.dart';
import 'package:mainuse/repositories/auth.repository.dart';
import 'package:mainuse/viewmodels/app.viewmodel.dart';
import 'package:mainuse/widgets/search_bar.widget.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  var loading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: appPrimaryColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Iconsax.user, size: 18),
                ),
              ),
              Text(
                "Fom Client",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 18, color: Colors.black87.withOpacity(0.7)),
              ),
              InkWell(
                onTap: () {
                  ref.read(authRepositoryProvider).logout();
                  ref.read(loggedInProvider.notifier).updateState(false);
                },
                child: const Icon(Iconsax.notification),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  child: SearchBar(hintText: "Rerchercher un service"),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HomeSlideSection(),
                      const SizedBox(height: 15),
                      const HomeWalletSection(),
                      const SizedBox(height: 20),
                      Text(
                        "LOGISTIQUE",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0XFF1D5B79),
                                ),
                      ),
                      const SizedBox(height: 12),
                      const HomeServicesSection(),
                      const SizedBox(height: 12),
                      Text(
                        "AUTRES SERVICES",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0XFF1D5B79),
                                ),
                      ),
                      const SizedBox(height: 6),
                      // const OtherServices(),
                      const SizedBox(height: 340)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
