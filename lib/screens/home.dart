import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/card_img.dart';
import 'package:simple_market/widgets/footer_bar.dart';
import 'package:simple_market/widgets/common_screen.dart';

const double padding_card = 30;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
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
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 25,
          crossAxisSpacing: 20,
          children: [
            CardImg(
              width: 140,
              height: 100,
              quarterTurns: 0,
              child: Text(
                "Geral",
                style: defaultTextStyle.copyWith(
                  color: const Color(0xFFFF5722),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/General");
              },
            ),
            CardImg(
              width: 140,
              height: 100,
              quarterTurns: 0,
              child: Text(
                "Geral",
                style: defaultTextStyle.copyWith(
                  color: const Color(0xFFFF5722),
                ),
              ),
            ),
            CardImg(
              width: 140,
              height: 100,
              quarterTurns: 0,
              child: Text(
                "Geral",
                style: defaultTextStyle.copyWith(
                  color: const Color(0xFFFF5722),
                ),
              ),
            ),
            CardImg(
              width: 140,
              height: 100,
              quarterTurns: 0,
              child: Text(
                "Geral",
                style: defaultTextStyle.copyWith(
                  color: const Color(0xFFFF5722),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
