import 'package:flutter/material.dart';
class OutputTextData extends StatelessWidget {
  final String textOutput;
  final String historyOutput;
OutputTextData({
  required this.textOutput,
  required this.historyOutput,
});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Text(
            historyOutput,
            style: TextStyle(
              letterSpacing: 1.0,
              fontSize: 20,
              color: Colors.white54,
              fontFamily: 'OpenSansCondensed',
              fontStyle: FontStyle.normal,
              backgroundColor: Colors.blueGrey.withOpacity(0.1),
            ),
            textAlign: TextAlign.justify,
            textDirection: TextDirection.ltr,
//                 textWidthBasis: TextWidthBasis.parent,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'Output',
          style: TextStyle(
            color: Colors.blueGrey.withOpacity(0.4),
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          textOutput,
          style: TextStyle(
            letterSpacing: 1.0,
//              fontSize: 25,
            height: 2.0,
            color: Colors.white60,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSansCondensed',
            backgroundColor: Colors.blueGrey.withOpacity(0.1),
          ),
        ),
      ],
    );
  }
}
