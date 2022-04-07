import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Image(image: AssetImage("images/logo_simple_market")),
        Text("SIMPLE MARKET"),
      ],
    );
  }
}