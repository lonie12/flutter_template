import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';

class DividerText extends StatelessWidget {
  const DividerText({super.key});

  @override
  Widget build(context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          height: 2,
          color: Colors.grey.shade300,
        )),
        const SizedBox(width: 5),
        Text(
          "ou utilisez",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontSize: 16, color: greyTextColor),
        ),
        const SizedBox(width: 5),
        Expanded(
            child: Divider(
          height: 2,
          color: Colors.grey.shade300,
        )),
      ],
    );
  }
}
