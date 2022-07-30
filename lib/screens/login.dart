import 'package:flutter/material.dart';
import 'package:simple_market/constants/colors.dart';

import 'package:simple_market/widgets/input.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/logo.dart';
import 'package:simple_market/widgets/circular_image.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFF5722),
        extendBody: true,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Logo(
                  assetName: "images/logo.svg",
                  imageColor: kWhite,
                ),
                InputField(
                  label: "Email:",
                  onChanged: (value) => {_email = value},
                  textStyle: defaultTextStyle.copyWith(
                    color: kWhite,
                  ),
                ),
                InputField(
                  label: "Password:",
                  onChanged: (value) => {_password = value},
                  textStyle: defaultTextStyle.copyWith(
                    color: kWhite,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(140, 50),
                    backgroundColor: kBaseGreen,
                  ),
                  onPressed: () => Navigator.pushNamed(context, "/Home"),
                  child: const Text(
                    "Entrar",
                    style: defaultTextStyle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Text(
                          "Registra-se",
                          style: defaultTextStyle.copyWith(
                            color: kBaseGreen,
                            fontSize: 14,
                          ),
                        ),
                        onTap: () =>
                            Navigator.pushNamed(context, "/Registration"),
                      ),
                      Text(
                        ", ou entrar como ",
                        style: defaultTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "convidado!",
                          style: defaultTextStyle.copyWith(
                            color: kBaseGreen,
                            fontSize: 14,
                          ),
                        ),
                        onTap: () => Navigator.pushNamed(context, "/Home"),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 15, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          CircularImage(
                            name:
                                "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                            color: kLightOrange,
                            xAxis: 170.0,
                            yAxis: 170.0,
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.symmetric(vertical: 30),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 5, 15, 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          CircularImage(
                            name:
                                "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                            color: kLightOrange,
                            xAxis: 90.0,
                            yAxis: 90.0,
                            margin: EdgeInsets.only(right: 30),
                          ),
                          CircularImage(
                            name:
                                "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                            color: kLightOrange,
                            xAxis: 40.0,
                            yAxis: 40.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
