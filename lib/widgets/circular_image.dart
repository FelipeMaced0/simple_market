import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(
      {Key? key,
      this.name = "",
      this.xAxis = 100.0,
      this.yAxis = 100.0,
      this.shadowRadius = 10.0,
      this.borderRadius = 100.0})
      : super(key: key);

  final String name;
  final double xAxis;
  final double yAxis;
  final double shadowRadius;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: xAxis,
      height: yAxis,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(image: AssetImage(name), fit: BoxFit.fill),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF9675),
            offset: Offset.zero,
            spreadRadius: shadowRadius,
          ),
        ],
      ),
    );
  }
}
