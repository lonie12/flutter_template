// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    this.loading = false,
    this.icon,
    this.onClick,
    this.backgroundColor,
    required this.enabled,
  });

  final String title;
  final IconData? icon;
  final Function? onClick;
  final Color? backgroundColor;
  final bool loading;
  final bool enabled;

  @override
  Widget build(context) {
    return Builder(
      builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => enabled
                    ? backgroundColor ?? appPrimaryColor
                    : greyTextColor,
              ),
              shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(lgRadius),
                ),
              ),
              padding: MaterialStateProperty.resolveWith(
                (states) => EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            onPressed: () => !enabled || loading ? {} : onClick!(),
            child: loading
                ? Center(
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
          ),
        );
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   padding: EdgeInsets.symmetric(vertical: 10),
        //   decoration: BoxDecoration(
        //     color: enabled ? backgroundColor ?? appPrimaryColor : greyTextColor,
        //     borderRadius: BorderRadius.circular(8),
        //   ),
        //   child: loading
        //       ? Center(
        //           child: SizedBox(
        //             height: 24,
        //             width: 24,
        //             child: CircularProgressIndicator(
        //               color: Colors.white,
        //               strokeWidth: 2,
        //             ),
        //           ),
        //         )
        //       : Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             icon != null ? Icon(icon, color: Colors.white) : SizedBox(),
        //             SizedBox(width: 8),
        //             Text(
        //               title,
        //               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        //                   color: Colors.white,
        //                   fontSize: 16.5,
        //                   fontWeight: FontWeight.w500),
        //             )
        //           ],
        //         ),
        // );
      },
    );
  }
}
