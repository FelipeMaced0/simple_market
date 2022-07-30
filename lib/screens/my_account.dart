import 'package:flutter/material.dart';
import 'package:simple_market/constants/colors.dart';
import 'package:simple_market/widgets/common_screen.dart';
import 'package:simple_market/widgets/circular_image.dart';
import 'package:simple_market/widgets/setting_card.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: Row(
            children: [
              const CircularImage(
                name: "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                xAxis: 50,
                yAxis: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "User 101",
                  style: TextStyle(
                    color: kLightOrange,
                  ),
                ),
              ),
            ],
          ),
        ),
        SettingCard(
          icon: const Icon(
            Icons.settings,
            size: 50,
            color: kLightOrange,
          ),
          textOne: "Meus Dados",
          textTwo: "Gerencia e altera seus dados",
          textOneMargin: const EdgeInsets.only(left: 20),
          textTowMargin: const EdgeInsets.only(left: 5),
          textStyleOne: const TextStyle(
            color: kLightOrange,
          ),
          textStyleTwo: const TextStyle(
            color: kBaseGrey,
            fontSize: 10,
          ),
          onTap: () {
            
          },
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Divider(
            thickness: 1,
            indent: 2,
            color: kBaseGrey,
          ),
        ),
        const SettingCard(
          icon: Icon(
            Icons.star_rounded,
            size: 50,
            color: kLightOrange,
          ),
          textOne: "Favoritar",
          textTwo: "Visualize as promoções do seus mercados favoritos",
          textOneMargin: EdgeInsets.only(left: 20),
          textTowMargin: EdgeInsets.only(left: 5),
          textStyleOne: TextStyle(
            color: kLightOrange,
          ),
          textStyleTwo: TextStyle(
            color: kBaseGrey,
            fontSize: 10,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Divider(
            thickness: 1,
            indent: 2,
            color: kBaseGrey,
          ),
        ),
        const SettingCard(
          icon: Icon(
            Icons.exit_to_app,
            size: 50,
            color: kLightOrange,
          ),
          textOne: "Sair",
          textTwo: "Sair do aplicaitvo",
          textOneMargin: EdgeInsets.only(left: 20),
          textTowMargin: EdgeInsets.only(left: 5),
          textStyleOne: TextStyle(
            color: kLightOrange,
          ),
          textStyleTwo: TextStyle(
            color: kBaseGrey,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
