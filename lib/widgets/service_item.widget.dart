import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/models/service_item.model.dart';

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
    required this.item,
  });

  final ServiceItem item;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(medRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.5,
            blurRadius: 12,
          )
        ],
      ),
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => item.to,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage(item.icon),
                  ),
                ),
              ),
            ),
            Text(
              item.title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16.5,
                    wordSpacing: 0.1,
                  ),
              maxLines: 2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
