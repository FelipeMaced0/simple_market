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
        child: Column(
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
              children: const [
                InputField(
                  label: "Cep:",
                  width: 150,
                ),
                InputField(
                  label: "Número:",
                  width: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
