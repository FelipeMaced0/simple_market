import 'package:flutter/material.dart';
import 'package:simple_market/screens/home.dart';
import 'package:simple_market/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Login(),
        "/Home": (context) => Home(),
      },
    );
  }
}
