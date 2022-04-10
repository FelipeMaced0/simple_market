import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';

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
            margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              children: [
                Text(
                  "Olá User!",
                  style: defaultTextStyle.copyWith(
                      fontSize: 32, color: Color(0xFFCFCACA)),
                ),
                Text(
                  "Aproveite as melhores ofertas!",
                  style: defaultTextStyle.copyWith(
                      fontSize: 16, color: Color(0xFFFF9675)),
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 140,
                        height: 100,
                        child: Image.asset(
                          "images/nrd-D6Tu_L3chLE-unsplash.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        height: 60,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
