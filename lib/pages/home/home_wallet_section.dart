import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/helpers/constants.dart';

class HomeWalletSection extends StatelessWidget {
  const HomeWalletSection({super.key});

  @override
  Widget build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: appPrimaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pay Wallet",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const Icon(Iconsax.setting, color: Colors.white, size: 24)
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Solde actuel",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white70),
                ),
                Text(
                  "200 F",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
