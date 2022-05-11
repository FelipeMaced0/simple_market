import 'package:flutter/material.dart';
import 'package:simple_market/constants/colors.dart';
import 'package:simple_market/widgets/common_screen.dart';
import 'package:simple_market/widgets/logo.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int _totalItens = 0;
  double _totalValue = 10.53;
  List<Widget> _products = [];

  void addProduct() {
    _products = [
      ..._products,
      Card(
        key: UniqueKey(),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const Icon(Icons.abc),
                  ),
                  const Text("Peixe"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.delete_outline_rounded,
                    ),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Logo(
              assetName: "images/logo.svg",
              imageColor: Color(0xFFFF9675),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20, top: 20),
            child: Row(
              children: const [
                Icon(
                  Icons.format_list_numbered,
                  color: kLightOrange,
                  size: 40,
                ),
                SizedBox(width: 20),
                Text(
                  "Minha Lista",
                  style: TextStyle(
                    color: kLightOrange,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total de itens: $_totalItens",
                  style: const TextStyle(
                    color: kBaseGrey,
                    fontSize: 10,
                  ),
                ),
                Text(
                  "Valor estimado: R\$: $_totalValue",
                  style: const TextStyle(
                    color: kBaseGrey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: ListView(
            shrinkWrap: true,
            children: _products,
          ),
        ),
        Flexible(
            flex: 0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  color: kLightOrange,
                  shape: const CircleBorder(),
                  onPressed: () {
                    setState(() {
                      _totalItens += 1;
                      addProduct();
                    });
                  },
                  child: const Icon(
                    Icons.add_rounded,
                    color: kWhite,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
