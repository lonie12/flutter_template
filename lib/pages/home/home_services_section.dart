import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/widgets/service_item.widget.dart';

class HomeServicesSection extends StatelessWidget {
  const HomeServicesSection({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 110,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.08,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ServiceItemWidget(item: topServices[index]);
        },
        itemCount: 3,
      ),
    );
  }
}
