import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/helpers/utils.dart';

class PickImageOptions extends StatelessWidget {
  const PickImageOptions({super.key, required this.onSelected});

  final Function(File?) onSelected;

  @override
  Widget build(context) {
    return CupertinoActionSheet(
      title: Text(
        "Capturez Photos ou Vidéos",
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.grey,
            ),
      ),
      actions: [
        CupertinoActionSheetAction(
          child: Center(
            child: Row(
              children: [
                const Icon(Iconsax.camera),
                const SizedBox(width: 12),
                Text(
                  'Photos',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          onPressed: () async {
            Navigator.of(context).pop();
            onSelected(await getImageFromCamera());
          },
        ),
        CupertinoActionSheetAction(
          child: Center(
            child: Row(
              children: [
                const Icon(Iconsax.video),
                const SizedBox(width: 12),
                Text(
                  'Vidéos',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          onPressed: () async {
            Navigator.of(context).pop();
            onSelected(await getVideoFromCamera());
          },
        ),
      ],
    );
  }
}
