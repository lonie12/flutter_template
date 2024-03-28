import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/viewmodels/car_rental.viewmodel.dart';
import 'package:mainuse/widgets/app_bar.widget.dart';
import 'package:mainuse/widgets/car_detail.widget.dart';
import 'package:mainuse/widgets/filter_badge.widget.dart';
import 'package:mainuse/widgets/search_bar.widget.dart';

class FindCar extends ConsumerWidget {
  const FindCar({super.key});

  @override
  Widget build(context, ref) {
    var cars = ref.watch(getCarsProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Appbar(
          title: "Trouver un véhicule",
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: switch (cars) {
                AsyncData(:final value) => SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: lgScreenPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SearchBar(
                          hintText: "Trouver un véhicule",
                        ),
                        const SizedBox(height: 15),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            children: [
                              FilterBadge(title: "Avec 4x4"),
                              FilterBadge(title: "Climatisé"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ...List.generate(
                          value.data!.length,
                          (index) => Column(
                            children: [
                              CarDetails(car: value.data![index]),
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                AsyncError(:final error) => Text('error: $error'),
                _ => const Text('loading'),
              },
            )
          ],
        ),
      ),
    );
  }
}
