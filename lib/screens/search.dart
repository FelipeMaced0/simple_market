import 'package:flutter/material.dart';
import 'package:simple_market/widgets/common_screen.dart';
import 'package:simple_market/widgets/card_img.dart';
import 'package:simple_market/widgets/logo.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      children: [
        const Logo(
          assetName: "images/logo.svg",
          imageColor: Color(0xFFFF9675),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, item) {
            return CardImg(
              quarterTurns: -1,
              image: const AssetImage(
                  "images/tara-clark-Gk8LG7dsHWA-unsplash.jpg"),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("data"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("data"),
                        Text("data"),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
