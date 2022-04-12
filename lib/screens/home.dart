import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/card_img.dart';
import 'package:simple_market/widgets/footer_bar.dart';

const double padding_card = 30;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FooterBar(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CardImg(
                          width: 140,
                          height: 100,
                          quarterTurns: 0,
                          margin: EdgeInsets.only(bottom: padding_card),
                          child: SizedBox(
                            width: 140,
                            height: 30,
                          ),
                        ),
                        CardImg(
                          width: 140,
                          height: 100,
                          quarterTurns: 0,
                          margin: EdgeInsets.only(bottom: padding_card),
                          child: SizedBox(
                            width: 140,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CardImg(
                          width: 140,
                          height: 100,
                          quarterTurns: 0,
                          margin: EdgeInsets.only(bottom: padding_card),
                          child: SizedBox(
                            width: 140,
                            height: 30,
                          ),
                        ),
                        CardImg(
                          width: 140,
                          height: 100,
                          quarterTurns: 0,
                          margin: EdgeInsets.only(bottom: padding_card),
                          child: SizedBox(
                            width: 140,
                            height: 30,
                          ),
                        ),
                      ],
                    )
                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
