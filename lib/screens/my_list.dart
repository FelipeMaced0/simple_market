import 'package:flutter/material.dart';
import 'package:simple_market/widgets/common_screen.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      children: [
        Row(
          children: const [
            Icon(Icons.format_list_numbered),
            SizedBox(width: 20),
            Text("Minha Lista"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Total de itens"),
            Text("Valor estimado"),
          ],
        ),
        ListView(
          shrinkWrap: true,
          children: [
            Card(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.abc),
                      Text("Peixe"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.abc),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
