// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_market/widgets/circular_image.dart';
import 'package:simple_market/widgets/logo.dart';
import 'package:simple_market/widgets/input.dart';
import 'package:simple_market/constants/text_constants.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(
                    assetName: "images/logo.svg",
                    imageColor: Color(0xFFFF9675),
                    imageHeight: 40,
                  ),
                  CircularImage(
                    name: "images/franki-chamaki-ivfp_yxZuYQ-unsplash.jpg",
                    color: Color(0xFFD2CECC),
                    xAxis: 150.0,
                    yAxis: 150.0,
                    margin: EdgeInsets.all(30),
                  ),
                  InputField(
                    label: "Nome:",
                    textStyle: defaultTextStyle.copyWith(
                      color: Color(0xFFFF9675),
                    ),
                  ),
                  InputField(
                    label: "Email:",
                    textStyle: defaultTextStyle.copyWith(
                      color: Color(0xFFFF9675),
                    ),
                  ),
                  InputField(
                    label: "Endereço:",
                    textStyle: defaultTextStyle.copyWith(
                      color: Color(0xFFFF9675),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      InputField(
                        label: "Cep:",
                        textStyle: defaultTextStyle.copyWith(
                          color: Color(0xFFFF9675),
                        ),
                        width: 130,
                      ),
                      InputField(
                        label: "Número:",
                        textStyle: defaultTextStyle.copyWith(
                          color: Color(0xFFFF9675),
                        ),
                        width: 130,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => {},
                          child: Text("Registrar",
                            style: defaultTextStyle.copyWith(
                              fontSize: 15,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFF9675),
                            fixedSize: Size(140, 30),
                          ),
                        ),
                      ],
                    ),
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
