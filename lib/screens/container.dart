import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  static const routeName = '/container-widget';
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> with SingleTickerProviderStateMixin{
  Animation<double> _animation;
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync:
        this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ContainerWidget"),
        ),
        body: new Center(
            child: new Container(
                child: new RotationTransition(
                    turns: new AlwaysStoppedAnimation(_animation.value),
                    child: new Icon(Icons.airplanemode_active, size: 150.0)),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent))),
        floatingActionButton: new FloatingActionButton(
            onPressed: _spin,
            tooltip: 'Increment',
            child: new Icon(Icons.rotate_right),),);
  }

  void _spin() {
    _controller.forward(from: 0.0);
  }
}


