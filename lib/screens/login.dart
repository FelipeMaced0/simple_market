import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:simple_market/widgets/input.dart';
import 'package:simple_market/constants/textConstants.dart';

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
                  SvgPicture.asset(
                    "images/logo.svg",
                  ),
                  InputField(
                    label: "Email:",
                    onChanged: (value)=>{
                      _email = value
                    },
                    textStyle: defaultTextStyle,
                  ),
                  InputField(
                    label: "Password:",
                    onChanged: (value)=>{
                      _password = value
                    },
                    textStyle: defaultTextStyle,
                  ),
                 
                ]),
          ),
        ));
  }
}