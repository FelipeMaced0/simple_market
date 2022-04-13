import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/card_img.dart';
import 'package:simple_market/widgets/footer_bar.dart';

const double padding_card = 30;

class Drink extends StatefulWidget {
  const Drink({Key? key}) : super(key: key);

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: FooterBar(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 5),
        children: [
          IconFooter(
            icon: Icons.home_filled,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Início",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
          ),
          IconFooter(
            icon: Icons.format_list_numbered,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Minha Lista",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
          ),
          IconFooter(
            icon: Icons.store_mall_directory_rounded,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Buscar",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
          ),
          IconFooter(
            icon: Icons.account_circle_sharp,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Minha Conta",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
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
                  ),
                  CardImg(
                    width: 140,
                    height: 100,
                    quarterTurns: 0,
                    child: Text("data"),
                  ),
                  CardImg(
                    width: 140,
                    height: 100,
                    quarterTurns: 0,
                    child: Text("data"),
                  ),
                  CardImg(
                    width: 140,
                    height: 100,
                    quarterTurns: 0,
                    child: Text("data"),
                  ),
                  CardImg(
                    width: 140,
                    height: 100,
                    quarterTurns: 0,
                    child: Text("data"),
                  ),
                  CardImg(
                    width: 140,
                    height: 100,
                    quarterTurns: 0,
                    child: Text("data"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
