import 'dart:ffi';

import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("choose"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Do you want to\nbuy this item?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w200)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(flex: 2),
                //SelectButton(text: "YES", onTap: _yesOnTap),
                Spacer(),
                Text("hellow world"),
                //SelectButton(text: "NO", onTap: _noOnTap),
                //Spacer(flex: 2)
      ],
            ),
          ]),
    );
  }
}
Widget SelectButton({String text, onTap}){
  return RaisedButton(
    child: Text(text),
    onPressed: onTap,
  );
}
