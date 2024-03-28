import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';

class FilterBadge extends StatelessWidget {
  const FilterBadge({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: lgScreenPadding,
        vertical: 8,
      ),
      margin: const EdgeInsets.only(right: lgSpaceMargin),
      decoration: BoxDecoration(
        color: greyTextColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
