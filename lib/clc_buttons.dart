import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class myCLC_buttons extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final double textSize;
  final Function onTogglePressed;

  myCLC_buttons({
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.textSize,
    required this.onTogglePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        height: 65,
        color: Colors.blue.withOpacity(0.1),
//        decoration: BoxDecoration(
//              ),

        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(2),
        child: FlatButton(
          clipBehavior: Clip.hardEdge,
          onPressed: () => onTogglePressed(text),
          child: FittedBox(
            fit: BoxFit.fill,
            child: Container(
              height: 64,
              width: 66,
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              padding: EdgeInsets.all(0),
              child: Center(
                child: Text(
                  '$text',
                  style: TextStyle(
                    fontSize: textSize,
                    color: textColor,
                    fontFamily: 'Parisienne-Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                    color: Colors.black54.withOpacity(0.2),
                    width: 1.0,
                    style: BorderStyle.none),
                borderRadius: BorderRadius.circular(30),
                color: bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 8.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
