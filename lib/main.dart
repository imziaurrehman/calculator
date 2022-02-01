import 'package:calculator_app/clc_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './output.dart';

void main() {
  runApp(MaterialApp(
    home: MyclcApp(),
    debugShowCheckedModeBanner: false,
  ));
}

//Test Commit

class MyclcApp extends StatefulWidget {
  @override
  State<MyclcApp> createState() => _MyclcAppState();
}

class _MyclcAppState extends State<MyclcApp> {
  double num1 = 0;
  double num2 = 0;
  String operation = ' ';
  String intermediate = ' ';
  String displayOutput = ' ';
  String history = ' ';

  void myOnClick(String onSelect) {
    if (onSelect == 'AC') {
      num1 = 0;
      num2 = 0;
      operation = ' ';
      intermediate = ' ';
      displayOutput = ' ';
      history = ' ';
    } else if (onSelect == '.') {
      for (int j = 0 ; j < displayOutput.length ; j++){

      }
    } else if (onSelect == '<') {
      intermediate = displayOutput.substring(0, displayOutput.length - 1);
      for (int i = 0; i < displayOutput.length; i++) {
        if (intermediate == displayOutput[i].length - 1) {
          history = (num1.toString() + operation.toString() + num2.toString())
              .substring(0, 0);
        } else {
          history = displayOutput.substring(0, displayOutput.length - 1);
        }
      }
    } else if (onSelect == '+/-') {
      if (displayOutput[0] != '-') {
        intermediate = '-' + displayOutput;
      } else {
        intermediate = displayOutput.substring(1);
      }
    } else if (onSelect == '+' ||
        onSelect == '-' ||
        onSelect == 'X' ||
        onSelect == '/') {
      num1 = double.parse(displayOutput);
      intermediate = ' ';
      operation = onSelect;
    } else if (onSelect == '=') {
      num2 = double.parse(displayOutput);
      if (operation == '+') {
        intermediate = (num1 + num2).toStringAsFixed(0);
        history = (num1.toStringAsFixed(0) +
            operation.toString() +
            num2.toStringAsFixed(0));
      }
      if (operation == '-') {
        intermediate = (num1 - num2).toStringAsFixed(0);
        history = (num1.toStringAsFixed(0) +
            operation.toString() +
            num2.toStringAsFixed(0));
      }
      if (operation == 'X') {
        intermediate = (num1 * num2).toStringAsFixed(0);
        history = (num1.toStringAsFixed(0) +
            operation.toString() +
            num2.toStringAsFixed(0));
      }
      if (operation == '/') {
        intermediate = (num1 / num2).toStringAsFixed(2);
        history = (num1.toStringAsFixed(0) +
            operation.toString() +
            num2.toStringAsFixed(0));
      }
    } else {
      intermediate = int.parse(displayOutput + onSelect).toString();
    }
    setState(() {
      displayOutput = intermediate;
      print(displayOutput);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0.9,
          title: Image.asset(
            'assets/images/cal.jpg',
            width: 115,
            height: 58,
            fit: BoxFit.cover,
          ),

//        Text('Simple Calculator',style:TextStyle(
//          color: Colors.white54,height: 1.9,fontSize: 22, letterSpacing: 0.4,)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Stack(
//          alignment: Alignment.topCenter,
          children: [
            Card(
              margin: EdgeInsets.only(
                top: 5,
                bottom: 0,
                right: 5,
                left: 5,
              ),
              elevation: 20,
              color: Colors.blue.withOpacity(0.3),
              shadowColor: Colors.purple.shade800,
                child: Container(height: 280,width: 400,
                    child: ShowsOutputData(textOutput:displayOutput ,historyOutput: history,)),

            ),
            Positioned(child: Container(margin: EdgeInsets.symmetric(vertical: 0),child: Text('Welcome',style: TextStyle(
              fontFamily: 'Parisienne-Regular',
              color: Colors.purple.withOpacity(0.5),
              fontSize: 55,
             shadows:[
               Shadow(
                 color:Colors.white70,
                 offset: Offset(0.0,4.5),
                 blurRadius: 15.0,

               ),
             ]

            ),)),
              left: 75,

            ),
            Positioned(child: Container(margin: EdgeInsets.symmetric(vertical: 0),child: Text('Calculator',style: TextStyle(
              fontFamily: 'Parisienne-Regular',
                color: Colors.purple.withOpacity(0.5),
              fontSize: 55,
                shadows:[
                  Shadow(
                    color:Colors.white70,
                    offset: Offset(0.0,4.5),
                    blurRadius: 15.0,

                  ),
                ]


    ),)),
              top: 220,
              left: 75,

            ),


            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myCLC_buttons(
                        text: 'AC',
                        textColor: Colors.black54,
                        bgColor: Colors.white70,
                        textSize: 26.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '.',
                        textColor: Colors.black54,
                        bgColor: Colors.white70,
                        textSize: 45.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '<',
                        textColor: Colors.black54,
                        bgColor: Colors.white70,
                        textSize: 55.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '/',
                        textColor: Colors.black54,
                        bgColor: Colors.amber,
                        textSize: 35.0,
                        onTogglePressed: myOnClick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myCLC_buttons(
                        text: '1',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '2',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '3',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: 'X',
                        textColor: Colors.black54,
                        bgColor: Colors.amber,
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myCLC_buttons(
                        text: '4',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '5',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '6',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '+',
                        textColor: Colors.black54,
                        bgColor: Colors.amber,
                        textSize: 55.0,
                        onTogglePressed: myOnClick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myCLC_buttons(
                        text: '7',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '8',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '9',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '-',
                        textColor: Colors.black54,
                        bgColor: Colors.amber,
                        textSize: 46.0,
                        onTogglePressed: myOnClick,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      myCLC_buttons(
                        text: '+/-',
                        textColor: Colors.black54,
                        bgColor: Colors.white70,
                        textSize: 35.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '0',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '00',
                        textColor: Colors.white60,
                        bgColor: Color.fromRGBO(20, 30, 44, 0.8),
                        textSize: 25.0,
                        onTogglePressed: myOnClick,
                      ),
                      myCLC_buttons(
                        text: '=',
                        textColor: Colors.black54,
                        bgColor: Colors.amber,
                        textSize: 55.0,
                        onTogglePressed: myOnClick,
                      ),
                    ],
                  ),
                ]),
          ]

        ));
  }
}
