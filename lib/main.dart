import 'package:flutter/material.dart';
import 'package:simple_market/screens/drink.dart';
import 'package:simple_market/screens/home.dart';
import 'package:simple_market/screens/login.dart';
import 'package:simple_market/screens/my_account.dart';
import 'package:simple_market/screens/my_list.dart';
import 'package:simple_market/screens/registration.dart';
import 'package:simple_market/screens/general.dart';
import 'package:simple_market/screens/search.dart';
import 'package:simple_market/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      theme: ThemeData(
        //fontFamily: "FredokaOne",
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontFamily: "FredokaOne",
          )
        ),
        inputDecorationTheme:  InputDecorationTheme(

          focusedBorder:  OutlineInputBorder(
            borderSide: const BorderSide(
              color: kLightOrange,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          iconColor: kLightOrange,

        )
      ),
      routes: {
        "/": (context) => const Login(),
        "/Home": (context) => const Home(),
        "/Registration": (context) => const Registration(),
        "/General": (context) => const General(),
        "/Drink": (context) => const Drink(),
        "/Search": (context) => const Search(),
        "/MyList": (context) => const MyList(),
        "/MyAccount": (context) => const MyAccount(),
      },
    );
  }
}