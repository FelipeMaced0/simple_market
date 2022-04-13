import 'package:flutter/material.dart';

class FooterBar extends StatefulWidget {
  const FooterBar(
      {Key? key,
      this.height = 50,
      this.margin,
      this.padding,
      this.children = const []})
      : super(key: key);

  final double height;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final List<Widget> children;
  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  @override
  Widget build(BuildContext context) {
    final double _height = widget.height;
    final EdgeInsets? _margin = widget.margin;
    final EdgeInsets? _padding = widget.padding;
    final List<Widget> _children = widget.children;

    return Container(
      height: _height,
      margin: _margin,
      padding: _padding,
      color: const Color(0xFFFF9675),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _children,
      ),
    );
  }
}

class IconFooter extends StatefulWidget {
  const IconFooter(
      {Key? key,
      this.icon,
      this.iconSize = 50,
      this.iconColor,
      this.text = "",
      this.textStyle,
      this.width = 50,
      this.height = 50,
      this.onTap})
      : super(key: key);

  final IconData? icon;
  final double iconSize;
  final Color? iconColor;
  final String text;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final Function()? onTap;

  @override
  State<IconFooter> createState() => _IconFooterState();
}

class _IconFooterState extends State<IconFooter> {
  @override
  Widget build(BuildContext context) {
    final IconData? _icon = widget.icon;
    final double _iconSize = widget.iconSize;
    final Color? _iconColor = widget.iconColor;
    final String _text = widget.text;
    final TextStyle? _textStyle = widget.textStyle;
    final double _width = widget.width;
    final double _height = widget.height;
    final Function()? _onTap = widget.onTap; 

    return InkWell(
      onTap: _onTap,
      child: SizedBox(
        width: _width,
        height: _height,
        child: Column(
          children: [
            Icon(
              _icon,
              size: _iconSize,
              color: _iconColor,
            ),
            Text(
              _text,
              style: _textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
