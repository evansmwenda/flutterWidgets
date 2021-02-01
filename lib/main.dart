import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/container.dart';
import 'package:flutter_demo/screens/expansion_panel.dart';
import 'package:flutter_demo/screens/fingerprint_auth.dart';
import 'package:flutter_demo/screens/gridtile.dart';
import 'package:flutter_demo/screens/homepage.dart';
import 'package:flutter_demo/screens/scaffold.dart';
import 'package:flutter_demo/screens/settings.dart';
import 'package:flutter_demo/widgets/loadingimage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//    debugShowCheckedModeBanner: false,//uncomment this line in production
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),//MyApp(), //splash screen page
        LoadingImage.routeName: (context) => LoadingImage(),//LoadingImage page
        Settings.routeName: (context) => Settings(),//Settings page
        FingerPrintAuth.routeName: (context) => FingerPrintAuth(),//FingerPrintAuth
        ContainerWidget.routeName: (context) => ContainerWidget(),//ContainerWidget
        ScaffoldWidget.routeName: (context) => ScaffoldWidget(),//ScaffoldWidget
        ExpansionedTile.routeName: (context) => ExpansionedTile(),//ScaffoldWidget
        GridTileWidget.routeName: (context) => GridTileWidget(),//GridTileWidget


      },
    ),
  );
}