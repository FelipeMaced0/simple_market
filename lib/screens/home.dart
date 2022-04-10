import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/card_img.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              children: [
                Text(
                  "Olá User!",
                  style: defaultTextStyle.copyWith(
                      fontSize: 32, color: const Color(0xFFCFCACA)),
                ),
                Text(
                  "Aproveite as melhores ofertas!",
                  style: defaultTextStyle.copyWith(
                      fontSize: 16, color: const Color(0xFFFF9675)),
                ),
                const CardImg(
                  width: 140,
                  height: 100,
                  quarterTurns: 0,
                  child: SizedBox(width: 140, height: 30,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
