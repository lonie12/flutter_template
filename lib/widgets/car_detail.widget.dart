import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/models/car.model.dart';
import 'package:mainuse/pages/car_rental/rent_car.page.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key, required this.car});

  final Car car;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RentCar(car: car)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(lgRadius),
          border: Border.all(width: 0.5, color: Colors.grey.shade400),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.7,
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height: 215,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(medRadius),
                  color: Colors.grey[200],
                ),
                child: Image(
                  image: NetworkImage(
                    car.images[0],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: smlSpaceMargin),
            const Divider(color: Colors.grey, thickness: .3, height: 0.7),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        car.model,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        car.brand,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "4.5",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: greyTextColor),
                            ),
                            const SizedBox(width: 6),
                            const Icon(
                              CarbonIcons.star_filled,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        car.price,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 18.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
