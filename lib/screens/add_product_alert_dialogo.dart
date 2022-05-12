import 'package:flutter/material.dart';
import 'package:simple_market/widgets/input.dart';
import 'package:simple_market/constants/colors.dart';

class AddProductAlert extends StatelessWidget {
  const AddProductAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0x88000000),
        child: AlertDialog(
          title: const Text(
            "Adicionar Item",
            style: TextStyle(
              color: kLightOrange,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              children: const [
                Flexible(
                  flex: 1,
                  child: InputField(
                    label: "Item",
                    textStyle: TextStyle(
                      color: kLightOrange,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
