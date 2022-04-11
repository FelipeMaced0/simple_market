// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_market/widgets/logo.dart';
import 'package:simple_market/widgets/input.dart';

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
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(
                    assetName: "images/logo.svg",
                    imageColor: Color(0xFFFF9675),
                  ),
                  InputField(
                    label: "Nome:",
                  ),
                  InputField(
                    label: "Email:",
                  ),
                  InputField(
                    label: "Endereço:",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      InputField(
                        label: "Cep:",
                        width: 130,
                      ),
                      InputField(
                        label: "Número:",
                        width: 130,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: TextButton(
                          onPressed: () => {},
                          child: Text("Registrar"),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFF9675),
                            fixedSize: Size(140, 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
