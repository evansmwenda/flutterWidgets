import 'package:flutter/material.dart';

class ExpansionedTile extends StatelessWidget {
  static const routeName = '/expansion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Panel - FAQs"),
      ),
      body: Center(
        child: Text("debug expansion tile"),
      ),
    );
  }
}

