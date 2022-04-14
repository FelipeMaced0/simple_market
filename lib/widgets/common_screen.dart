import 'package:flutter/material.dart';
import 'package:simple_market/constants/text_constants.dart';
import 'package:simple_market/widgets/footer_bar.dart';

class CommonScreen extends StatefulWidget {
  const CommonScreen(
      {Key? key,
      required this.children,
      this.crossAxisAlignment = CrossAxisAlignment.start})
      : super(key: key);
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = widget.children;
    final CrossAxisAlignment _crossAxisAlignment = widget.crossAxisAlignment;

    return Scaffold(
      bottomNavigationBar: FooterBar(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 5),
        children: [
          IconFooter(
            icon: Icons.home_filled,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Início",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName("/Home"));
            },
          ),
          IconFooter(
            icon: Icons.format_list_numbered,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Minha Lista",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != "/MyList") {
                Navigator.pushNamed(context, "/MyList");
              }
            },
          ),
          IconFooter(
            icon: Icons.store_mall_directory_rounded,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Buscar",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != "/Search") {
                Navigator.pushNamed(context, "/Search");
              }
            },
          ),
          IconFooter(
            icon: Icons.account_circle_sharp,
            iconSize: 20,
            iconColor: const Color(0xFFFFFFFF),
            text: "Minha Conta",
            textStyle: defaultTextStyle.copyWith(
              fontSize: 8,
            ),
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != "/MyAccount") {
                Navigator.pushNamed(context, "/MyAccount");
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            crossAxisAlignment: _crossAxisAlignment,
            children: _children,
          ),
        ),
      ),
    );
  }
}
