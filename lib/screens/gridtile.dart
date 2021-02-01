import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  static const routeName = '/grid-tile';

  final GlobalKey<ScaffoldState>  _scaffoldKey  = GlobalKey<ScaffoldState>();

  List<String> images = [
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any"
  ];
  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

  @override
  Widget build(BuildContext context) {
    _showSnackBar() {
      //old way
      // _scaffoldKey.currentState.showSnackBar(SnackBar(
      //   content: Text('An unexpected error occurred: Error!'),
      // ));

      //new way
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Image.network(images[index]);
            },
          ),
        ),
        floatingActionButton: new FloatingActionButton.extended(
            icon: Icon(Icons.explicit),
            label: Text("Throw Error"),
            onPressed: () => _showSnackBar(),
            tooltip: 'Throw Error')
    );
  }
}
