import 'package:flutter/material.dart';

class ServiceItem {
  final String title;
  final String icon;
  final Widget to;

  ServiceItem({
    required this.icon,
    required this.title,
    required this.to,
  });
}
