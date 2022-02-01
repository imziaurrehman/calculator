import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowsOutputData extends StatelessWidget {
  final String textOutput;
  final String historyOutput;

  ShowsOutputData({
    required this.textOutput,
    required this.historyOutput,
  });

  @override
  Widget build(BuildContext context) {
//    final resultText = (textOutput.length > 6) ? textOutput : textOutput.substring(0,1);
//    final resulthistory = (historyOutput.length > 5)? historyOutput : historyOutput.substring(0,1);
    return
       Card(
        margin: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(25, 100),
            bottomRight: Radius.elliptical(25, 100),
            topRight: Radius.zero,
            bottomLeft: Radius.zero,
          ),
        ),
        color: Colors.blueGrey,
        elevation: 25.0,
        shadowColor: Colors.purple.shade300,
        child: Container(
//
          padding: EdgeInsets.all(0),
          color: Color.fromRGBO(20, 30, 44, 0.9),
          margin: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
          child: FittedBox(
            fit: BoxFit.fill,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: SingleChildScrollView(

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
              ),
            ),
        ),
      );
  }
}
