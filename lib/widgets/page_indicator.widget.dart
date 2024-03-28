import 'package:flutter/material.dart';

class PageIndicator extends StatefulWidget {
  final int currentIndex;
  final int length;

  const PageIndicator({
    super.key,
    required this.currentIndex,
    required this.length,
  });

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildIndicator(),
    );
  }

  List<Widget> _buildIndicator() {
    Color selectedColor = Theme.of(context).colorScheme.primary;
    Color unselectedColor = Theme.of(context).colorScheme.inversePrimary;
    List<Widget> indicators = [];
    for (int i = 0; i < widget.length; i++) {
      indicators.add(
        AnimatedContainer(
          duration: _controller.duration!,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: i == widget.currentIndex ? 24.0 : 8.0,
          decoration: BoxDecoration(
            color: i == widget.currentIndex ? selectedColor : unselectedColor,
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      );
    }
    return indicators;
  }
}
