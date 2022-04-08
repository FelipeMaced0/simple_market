import 'package:flutter/material.dart';
import 'package:simple_market/widgets/input.dart';


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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InputField(
                  label: "Email:",
                  onChanged: (value)=>{
                    _email = value
                  },
                ),
                InputField(
                  label: "Password:",
                  onChanged: (value)=>{
                    _password = value
                  },
                ),
               
              ]),
        ));
  }
}