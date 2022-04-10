import 'package:flutter/material.dart';

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
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Logo(
                    assetName: "images/logo.svg",
                    imageColor: Color(0xFFFFFFFF),
                  ),
                  InputField(
                    label: "Email:",
                    onChanged: (value) => {_email = value},
                    textStyle: defaultTextStyle,
                  ),
                  InputField(
                    label: "Password:",
                    onChanged: (value) => {_password = value},
                    textStyle: defaultTextStyle,
                  ),
                  ElevatedButton(
                      onPressed: () => {Navigator.pushNamed(context, "/Home")},
                      child: const Text("Entrar")),
                  Expanded(
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 15, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            CircularImage(
                              name:
                                  "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                              color: Color(0xFFFF9675),
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
                              color: Color(0xFFFF9675),
                              xAxis: 90.0,
                              yAxis: 90.0,
                              margin: EdgeInsets.only(right: 30),
                            ),
                            CircularImage(
                              name:
                                  "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                              color: Color(0xFFFF9675),
                              xAxis: 40.0,
                              yAxis: 40.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                ]),
          ),
        ));
  }
}
