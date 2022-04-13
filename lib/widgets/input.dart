import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField(
      {Key? key,
      this.label = "",
      this.onChanged,
      this.textStyle,
      this.width = 300.0,
      this.height = 40.0,
      this.margin,
      this.padding = const EdgeInsets.all(20.0)})
      : super(key: key);

  final String label;
  final Function(String)? onChanged;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    final String _label = widget.label;
    final Function(String)? _onChanged = widget.onChanged;
    final TextStyle? _textStyle = widget.textStyle;
    final double? _width = widget.width;
    final double? _height = widget.height;
    final EdgeInsets? _margin = widget.margin;
    final EdgeInsets? _padding = widget.padding;

    return Container(
      margin: _margin,
      padding: _padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              _label,
              style: _textStyle,
            ),
          ),
          SizedBox(
            width: _width,
            height: _height,
            child: TextField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              onChanged: _onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
