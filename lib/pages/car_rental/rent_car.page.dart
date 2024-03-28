import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/models/car.model.dart';
import 'package:mainuse/viewmodels/car_rental.viewmodel.dart';
import 'package:mainuse/widgets/app_bar.widget.dart';
import 'package:mainuse/widgets/button.widget.dart';
import 'package:mainuse/widgets/page_indicator.widget.dart';
import 'package:mainuse/widgets/text_input.widget.dart';

class RentCar extends ConsumerStatefulWidget {
  const RentCar({super.key, required this.car});

  final Car car;

  @override
  ConsumerState<RentCar> createState() => _RentCarState();
}

class _RentCarState extends ConsumerState<RentCar>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      if (!_focusNode1.hasFocus) {
        _focusNode1.unfocus();
      }
    });

    _focusNode2.addListener(() {
      if (!_focusNode2.hasFocus) {
        _focusNode2.unfocus();
      }
    });
  }

  @override
  Widget build(context) {
    var form = ref.watch(rentCarControllerProvider);
    final requested = ref.watch(carRentaLoaderProvider);
    return GestureDetector(
      onTap: () {
        if (_focusNode1.hasFocus) {
          _focusNode1.unfocus();
        }
        if (_focusNode2.hasFocus) {
          _focusNode2.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Appbar(
            title: "Confirmer la commande",
            description: '${widget.car.brand} • ',
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: lgSpaceMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1.6,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: List.generate(
                        widget.car.images.length,
                        (index) => Container(
                          clipBehavior: Clip.antiAlias,
                          width: double.infinity,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(lgRadius),
                            color: Colors.grey[200],
                            border: Border.all(
                                color: Colors.grey.shade300, width: 0.5),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.car.images[index]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 12,
                    child: PageIndicator(
                      currentIndex: _currentIndex,
                      length: 2,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Text(
                widget.car.model,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18.5, fontWeight: FontWeight.w600),
              ),
              Text(
                widget.car.brand,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: greyTextColor, fontSize: 15),
              ),
              const SizedBox(height: 12),
              Text(
                "${widget.car.price} FCFA",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextInputWidget(
                      hintText: "Nombre de jours",
                      title: "Days",
                      type: TextInputType.number,
                      focusNode: _focusNode1,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Selectable(
                      title: form.days.value.isNotEmpty
                          ? form.days.value
                          : "Options",
                      options: dayOptions,
                      onChange: (value) => ref
                          .read(rentCarControllerProvider.notifier)
                          .updateDays(value!),
                      selected: form.days.value,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Selectable(
                title: "Choisissez une ville",
                options: citiesOptions,
                onChange: (value) => ref
                    .read(rentCarControllerProvider.notifier)
                    .updateCity(value!),
                selected: form.city.value,
              ),
              const SizedBox(height: 16),
              const TextInputWidget(
                hintText:
                    "Avez vous besoin d'autre choses ? Mentionnez vos besoins",
                title: "Description",
                maxlines: 3,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.7,
                    color: Colors.grey.shade300,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: lgScreenPadding,
                  vertical: 1.5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Commander avec chaufeur",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 16, color: greyTextColor),
                    ),
                    Switch(
                      value: form.withDriver,
                      onChanged: (value) => ref
                          .read(rentCarControllerProvider.notifier)
                          .updateWithDriver(value),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 0,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Estimation",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 18, color: Colors.black.withOpacity(0.75)),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "150.000",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' XOF',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: ButtonWidget(
                    loading: requested,
                    title: "Commander",
                    enabled: form.status == FormzSubmissionStatus.success,
                    onClick: () => ref.read(
                      RentCarProvider(
                        vehicleId: widget.car.id,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
