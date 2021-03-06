import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traffic_lights_in_bloc/utility/constants.dart';

class ColorButtons extends StatelessWidget {
  final String? tooltip;
  final Color color;
  final Function onPressed;

  const ColorButtons({
    Key? key,
    this.tooltip,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onPressed.call();
      },
      tooltip: tooltip,
      backgroundColor: color,
    );
  }
}

class ColorContainer extends StatelessWidget {
  final Color color;

  const ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: containerWidth,
      height: containerHeight,
      color: color,
    );
  }
}
