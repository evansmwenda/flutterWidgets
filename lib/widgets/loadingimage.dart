import 'package:flutter/material.dart';

class LoadingImage extends StatelessWidget {
  static const routeName = '/loading-image';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body:  Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/loading.gif',
          // image: 'http://archivision.com/educational/samples/files/1A2-F-P-I-2-C1_L.jpg',
          image: 'http://placehold.it/100',
        ),
      ),


    );
  }
}
