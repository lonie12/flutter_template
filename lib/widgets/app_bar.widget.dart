import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
    required this.title,
    this.description,
    this.prefix,
    this.actions = const SizedBox(),
    this.backbutton = true,
  });

  final Widget? prefix;
  final Widget? actions;
  final String title;
  final String? description;
  final bool? backbutton;

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: description != null
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            backbutton!
                ? InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: prefix ?? const Icon(Iconsax.arrow_left),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16.5, fontWeight: FontWeight.w500),
                ),
                description != null
                    ? Text(
                        description ?? "",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: actions,
        ),
      ],
    );

    // Container(
    //   height: 60,
    //   width: MediaQuery.of(context).size.width,
    //   decoration: BoxDecoration(
    //     border: Border(
    //       bottom: BorderSide(width: 1, color: Colors.grey.shade300),
    //     ),
    //     color: appPrimaryColor,
    //   ),
    //   padding: const EdgeInsets.symmetric(horizontal: 12),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Row(
    //         children: [
    //           backbutton!
    //               ? InkWell(
    //                   onTap: () => Navigator.pop(context),
    //                   child: const Icon(
    //                     CarbonIcons.arrow_left,
    //                     size: 26,
    //                     color: Colors.white,
    //                   ),
    //                 )
    //               : const SizedBox(),
    //           const SizedBox(width: 12),
    //           Text(
    //             title,
    //             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
    //                 fontSize: 18,
    //                 fontWeight: FontWeight.w500,
    //                 color: Colors.white),
    //           ),
    //         ],
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(8),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(30),
    //         ),
    //         child: actions,
    //       ),
    //     ],
    //   ),
    // );
  }
}
