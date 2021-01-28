import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    final ListTile accessibilityListTile = ListTile(
        leading: Icon(Icons.accessibility),
        title: Text("Accessibility"),
        subtitle: const Text("Accesibility Settings"),
        trailing: Icon(Icons.settings),
        onTap: () {});

    final ListTile languageListTile = ListTile(
        leading: Icon(Icons.language),
        title: Text("Language"),
        subtitle: const Text("Language Settings"),
        trailing: Icon(Icons.settings),
        onTap: () {});

    final ListTile historyListTile = ListTile(
        leading: Icon(Icons.history),
        title: Text("History"),
        subtitle: const Text("History Settings"),
        trailing: Icon(Icons.settings),
        onTap: () {});

    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              accessibilityListTile,
              historyListTile,
              languageListTile
            ],
          ),
        ));
  }
}
