import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(
      {Key? key,
      this.name = "",
      this.xAxis = 100.0,
      this.yAxis = 100.0,
      this.shadowRadius = 10.0,
      this.roundness = 100.0,
      this.padding,
      this.margin,
      this.color = const Color(0xFFFFFFFF)
      })
      : super(key: key);

  final String name;
  final double xAxis;
  final double yAxis;
  final double shadowRadius;
  final double roundness;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: xAxis,
      height: yAxis,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(roundness),
        image: DecorationImage(image: AssetImage(name), fit: BoxFit.fill),
        boxShadow: [
          BoxShadow(
            color: color,
            offset: Offset.zero,
            spreadRadius: shadowRadius,
          ),
        ],
      ),
    );
  }
}
