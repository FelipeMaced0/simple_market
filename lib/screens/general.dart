import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/card_img.dart';

const double padding_card = 30;

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Geral!",
                style: defaultTextStyle.copyWith(
                    fontSize: 32, color: const Color(0xFFCFCACA)),
              ),
              Text(
                "Exibindo as melhores ofertas!",
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
