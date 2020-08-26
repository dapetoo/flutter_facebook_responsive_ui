import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final Function onPressed;

  CircleButton(
      {@required this.iconData,
      @required this.onPressed,
      @required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade200),
      child: IconButton(
          icon: Icon(iconData),
          color: Colors.black,
          iconSize: iconSize,
          onPressed: onPressed),
    );
  }
}
