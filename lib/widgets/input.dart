import 'package:flutter/material.dart';

class InputField extends StatefulWidget {

  const InputField({Key? key, this.label="", this.onChanged}) : super(key: key);

  final String label;
  final Function(String)? onChanged;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  

  @override
  Widget build(BuildContext context) {
    final String _label = widget.label;
    final Function(String)? _onChanged  = widget.onChanged;

    return Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(_label),
              ),
              TextField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                onChanged: _onChanged,
              ),
            ]));
  }
}
