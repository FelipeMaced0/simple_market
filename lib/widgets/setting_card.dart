import 'package:flutter/material.dart';
import 'package:simple_market/constants/colors.dart';

class SettingCard extends StatefulWidget {
  const SettingCard({
    Key? key,
    required this.icon,
    this.textOne = "--",
    this.textTwo = "--",
    this.textStyleOne,
    this.textStyleTwo,
    this.textOneMargin,
    this.textTowMargin,
    this.onTap
  }) : super(key: key);

  final Widget icon;
  final String textOne;
  final String textTwo;
  final TextStyle? textStyleOne;
  final TextStyle? textStyleTwo;
  final EdgeInsets? textOneMargin;
  final EdgeInsets? textTowMargin;
  final Function()? onTap;

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    final Widget _icon = widget.icon;
    final String _textOne = widget.textOne;
    final String _textTwo = widget.textTwo;
    final TextStyle? _textStyleOne = widget.textStyleOne;
    final TextStyle? _textStyleTwo = widget.textStyleTwo;
    final EdgeInsets? _textOneMargin = widget.textOneMargin;
    final EdgeInsets? _textTowMargin = widget.textTowMargin;
    final Function()? _onTap = widget.onTap;

    return Material(

      child: InkWell(
        onTap: _onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _icon,
                Container(
                  margin: _textOneMargin,
                  child: Text(
                    _textOne,
                    style: _textStyleOne,
                  ),
                ),
              ],
            ),
            Container(
              margin: _textTowMargin,
              child: Text(
                _textTwo,
                style: _textStyleTwo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
