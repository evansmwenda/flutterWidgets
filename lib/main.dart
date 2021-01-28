import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/homepage.dart';

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
        // Login.routeName: (context) => Login(),//login page
        // Register.routeName: (context) => Register(),//register page
        // Homepage.routeName: (context) => Homepage(),//homepage


      },
    ),
  );
}