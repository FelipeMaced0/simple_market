import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/card_img.dart';
import 'package:simple_market/widgets/common_screen.dart';

class Drink extends StatefulWidget {
  const Drink({Key? key}) : super(key: key);

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(children: [
      Text(
        "Bebidas!",
        style: defaultTextStyle.copyWith(
            fontSize: 32, color: const Color(0xFFCFCACA)),
      ),
      Text(
        "Exibindo as melhores ofertas!",
        style: defaultTextStyle.copyWith(
            fontSize: 16, color: const Color(0xFFFF9675)),
      ),
      const SizedBox(
        height: 20,
      ),
      GridView.count(
        shrinkWrap: true,
        mainAxisSpacing: 25,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const [
          CardImg(
            width: 140,
            height: 100,
            quarterTurns: 0,
            child: Text("data"),
            image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
          ),
          CardImg(
            width: 140,
            height: 100,
            quarterTurns: 0,
            child: Text("data"),
            image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
          ),
          CardImg(
            width: 140,
            height: 100,
            quarterTurns: 0,
            child: Text("data"),
            image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
          ),
          CardImg(
            width: 140,
            height: 100,
            quarterTurns: 0,
            child: Text("data"),
            image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
          ),
          CardImg(
            width: 140,
            height: 100,
            quarterTurns: 0,
            child: Text("data"),
            image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
          ),
          CardImg(
            width: 140,
            height: 100,
            quarterTurns: 0,
            child: Text("data"),
            image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
          ),
        ],
      ),
    ]);
  }
}
