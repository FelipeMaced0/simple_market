import 'package:flutter/material.dart';

const BorderRadius bottom = BorderRadius.only(
  topLeft: Radius.circular(10.0),
  topRight: Radius.circular(10.0),
);

const BorderRadius right = BorderRadius.only(
  topLeft: Radius.circular(10.0),
  bottomLeft: Radius.circular(10.0),
);

const BorderRadius left = BorderRadius.only(
  topRight: Radius.circular(10.0),
  bottomRight: Radius.circular(10.0),
);

const BorderRadius top = BorderRadius.only(
  bottomLeft: Radius.circular(10.0),
  bottomRight: Radius.circular(10.0),
);

class CardImg extends StatefulWidget {
  const CardImg(
      {Key? key,
      this.quarterTurns = 0,
      this.width = 140,
      this.height = 100,
      this.margin,
      this.padding,
      required this.child,
    })
      : super(key: key);

  final int quarterTurns;
  final double width;
  final double height;
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;


  @override
  State<CardImg> createState() => _CardImgState();
}

class _CardImgState extends State<CardImg> {
  @override
  Widget build(BuildContext context) {
    final int _quarterTurns = widget.quarterTurns;
    final double _width = widget.width;
    final double _height = widget.height;
    final Widget _child = widget.child;
    final EdgeInsets? _margin = widget.margin;
    final EdgeInsets? _padding = widget.padding;
    return Container(
      margin: _margin,
      padding: _padding,
      child: RotatedBox(
        quarterTurns: _quarterTurns,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2.0,
          child: Column(
            children: [
              SizedBox(
                width: _width,
                height: _height,
                child: RotatedBox(
                  quarterTurns: -1 * _quarterTurns,
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("images/nrd-D6Tu_L3chLE-unsplash.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: (_quarterTurns % 4 == 0 ? bottom : (_quarterTurns % 4 == 1 ? left : (_quarterTurns % 4 == 2 ? top : right))),
                    ),
                  ),
                ),
              ),
              _child
            ],
          ),
        ),
      ),
    );
  }
}
