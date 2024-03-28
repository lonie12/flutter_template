import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/helpers/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(context) {
    return TextField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          icon: const Icon(Iconsax.search_normal, color: Colors.grey),
          onPressed: () {},
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        filled: true,
        fillColor: Colors.white,
        hoverColor: greyTextColor,
        hintText: hintText,
      ),
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
    );
  }
}
