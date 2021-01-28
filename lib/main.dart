import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/homepage.dart';
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
        // Homepage.routeName: (context) => Homepage(),//homepage


      },
    ),
  );
}