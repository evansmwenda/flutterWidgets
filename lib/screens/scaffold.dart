import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  static const routeName = '/scaffold';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("AppBar"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print("Add IconButton Pressed...");
              },
            ),
          ],
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Body",
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) =>
              debugPrint("Bottom Navigation Bar onTap: ${index} "),
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: "Bottom Nav Bar Item 1",
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              label: "Bottom Nav Bar Item 2",
            )
          ],
        ),
        bottomSheet: Container(
          color: Colors.amberAccent,
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.update),
                  onPressed: () {
                    print("Bottom Sheet Icon Pressed");
                  }),
              Text("Bottom Sheet Text")
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        print("“Drawer Item 1 Pressed”");
                      }),
                  Text("‘Drawer Item 1’")
                ],
              ),
              Row(children: <Widget>[
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print("“Drawer Item 2 Pressed”");
                    }),
                Text("‘Drawer Item 2’")
              ])
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            print("“FloatingActionButton Pressed”");
          },
          tooltip: "‘Increment’",
          child: new Icon(Icons.add),
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.update),
            onPressed: () {
              print("“Persistant Footer Icon Pressed”");
            },
          ),
          Text("‘Persistant Footer Text’")
        ]);
  }
}
