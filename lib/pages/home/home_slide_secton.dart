import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/widgets/page_indicator.widget.dart';
import 'package:mainuse/widgets/slider_item.widget.dart';

class HomeSlideSection extends StatefulWidget {
  const HomeSlideSection({super.key});

  @override
  State<HomeSlideSection> createState() => _HomeSlideSectionState();
}

class _HomeSlideSectionState extends State<HomeSlideSection> {
  int _currentIndex = 0;
  @override
  Widget build(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(
            options: carouselOptions(
              onChange: (index, reason) => {
                setState(() {
                  _currentIndex = index;
                }),
              },
            ),
            items: const [
              SliderItem(color: Color(0XFFFE6F14)),
              SliderItem(color: Color(0xFF4180F2)),
              SliderItem(color: Color(0xFF6A5BCC)),
            ],
          ),
        ),
        const SizedBox(height: 6),
        PageIndicator(
          currentIndex: _currentIndex,
          length: 3,
        ),
      ],
    );
  }
}
