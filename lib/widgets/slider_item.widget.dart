import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(lgRadius),
        color: color,
        border: Border.all(color: Colors.grey.shade300, width: 0.5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Pour vous, Notre service de netoyage pro",
              maxLines: 3,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 18.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          AspectRatio(
            aspectRatio: 0.8,
            child: SvgPicture.asset(
              "assets/svgs/cleaning_pro.svg",
              semanticsLabel: 'Rafiki Clean',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
