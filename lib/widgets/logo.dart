import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({ 
    Key? key,
    this.assetName="",
    this.imageColor,
    this.imageWidth,
    this.imageHeight
  }) : super(key: key);

  final String assetName;
  final Color? imageColor;
  final double? imageWidth;
  final double? imageHeight;
  
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        assetName,
        color: imageColor,
        width: imageWidth,
        height: imageHeight
    );
  }
}