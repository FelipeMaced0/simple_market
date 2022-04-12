import 'package:flutter/material.dart';

class FooterBar extends StatefulWidget {
  const FooterBar({ Key? key }) : super(key: key);

  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color(0xFFFF9675),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("a"),
          Text("b"),
          Text("c"),
          Text("d")
        ],
      ),
    );
  }
}

/*
class IconFooter extends StatefulWidget {
  const IconFooter({ Key? key }) : super(key: key);

  @override
  State<IconFooter> createState() => _IconFooterState();
}


class _IconFooterState extends State<IconFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Icon(IconData.),
          Text(data),
        ],
      ),
    );
  }
}*/