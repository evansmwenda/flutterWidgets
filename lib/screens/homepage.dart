import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/fingerprint_auth.dart';
import 'package:flutter_demo/screens/settings.dart';
import 'package:flutter_demo/widgets/loadingimage.dart';

class Homepage extends StatelessWidget {
  static const routeName = '/';
  final List<String> entries = <String>['Loading Image', 'Settings', 'C'];
  final List<int> colorCodes = <int>[400, 350];
  // final List<Function> handlers = <Function>[_gotoLoadingImage(), 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    void _gotoLoadingImage() {
      Navigator.pushNamed(context, LoadingImage.routeName);
    }
    void _gotoSettings() {
      Navigator.pushNamed(context, Settings.routeName);
    }
    void _gotoFingerPrint() {
      Navigator.pushNamed(context, FingerPrintAuth.routeName);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("All Widgets"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // handlers[index];
                _gotoLoadingImage();
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Loading Image',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // handlers[index];
                _gotoSettings();
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // handlers[index];
                _gotoFingerPrint();
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Fingerprint Auth',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // handlers[index];
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    '',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        )

        // ListView.separated(
        //   padding: const EdgeInsets.all(8),
        //   itemCount: entries.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return GestureDetector(
        //       onTap: (){
        //         print("container $index clicked");
        //         // handlers[index];
        //         _gotoLoadingImage();
        //       },
        //       child: Container(
        //         height: 50,
        //         color: Colors.grey[colorCodes[index%2]],
        //         child: Center(child: Text('${entries[index]}',style: TextStyle(color: Colors.black,fontSize: 17),),),
        //       ),
        //     );
        //   },
        //   separatorBuilder: (BuildContext context, int index) => const Divider(),
        // ),
        );
  }

  Widget boxContainer(title,onTap){
    return GestureDetector(
      onTap: () {
        // handlers[index];
        onTap;
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 10),
        color: Colors.grey[300],
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
      ),
    );

  }
}
