import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mainuse/models/select_option.model.dart';
import 'package:mainuse/models/service_item.model.dart';
import 'package:mainuse/pages/car_rental/find_car.page.dart';
import 'package:mainuse/pages/courier/courier.page.dart';
import 'package:mainuse/pages/moving/moving.page.dart';

// URLS
const apiUrl = "http://192.168.1.228:2024";
// const apiUrl = "https://backend-ac.onrender.com";

// COLORS
const Color appPrimaryColor = Color(0XFF188EE5);
const Color appSecondaryColor = Color(0XFF07C065);
Color greyTextColor = const Color.fromARGB(255, 53, 52, 52).withOpacity(0.7);
const Color dangerColor = Color(0xFFF40A23);
const Color warningColor = Color(0xFFF4AA0A);
const Color purpleColor = Color.fromARGB(255, 136, 13, 213);
const Color successColor = Color(0XFF28a745);
const Color blackColor = Color(0XFF24292E);

// PADDINGS
const double smlScreenPadding = 10.0; // Small
const double smlBottomPadding = 6.0; // Small
const double smlSpaceMargin = 5.0; // Small

const double medScreenPadding = 12.0; // Medium
const double medBottomPadding = 10.0; // Medium
const double medSpaceMargin = 12.0; // Medium

const double lgScreenPadding = 15.0; // Large
const double lgBottomPadding = 13.0; // Large
const double lgSpaceMargin = 12.0; // Large

// RADIUS
const double smlRadius = 5.0; // Small
const double medRadius = 8.0; // Medium
const double lgRadius = 12.0; // Large

// Images
String logoGoogle = "assets/images/google.png";
String logoFacebook = "assets/images/facebook.png";
String logoFom = "assets/images/applogo.png";

// List options
final dayOptions = <SelectOption>[
  SelectOption(key: "days", value: "Jours"),
  SelectOption(key: "months", value: "Mois"),
];

// List options
final citiesOptions = <SelectOption>[
  SelectOption(key: "lome", value: "Lomé"),
  SelectOption(key: "kpalime", value: "Kpalimé"),
  SelectOption(key: "atakpame", value: "Atakpamé"),
  SelectOption(key: "sokode", value: "Sokodé"),
  SelectOption(key: "kara", value: "Kara"),
  SelectOption(key: "dapaong", value: "Dapaong"),
];

//
CarouselOptions carouselOptions({
  required Function(
    int,
    CarouselPageChangedReason,
  ) onChange,
}) {
  return CarouselOptions(
    height: 150,
    viewportFraction: 0.85,
    autoPlay: true,
    padEnds: true,
    autoPlayInterval: const Duration(seconds: 5),
    autoPlayCurve: Curves.fastOutSlowIn,
    pauseAutoPlayOnTouch: true,
    onPageChanged: onChange,
  );
}

// Services
final topServices = <ServiceItem>[
  ServiceItem(
    title: "Rental",
    icon: "assets/images/car-rental.png",
    to: const FindCar(),
  ),
  ServiceItem(
    title: "Courier",
    icon: "assets/images/moving.png",
    to: const CourierPage(),
  ),
  ServiceItem(
    title: "Moving",
    icon: "assets/images/moving-home.png",
    to: const MovingPage(),
  ),
];
