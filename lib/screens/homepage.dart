import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/loadingimage.dart';

class Homepage extends StatelessWidget {
  static const routeName = '/';
  final List<String> entries = <String>['Loading Image', 'B', 'C'];
  final List<int> colorCodes = <int>[400, 350];
  // final List<Function> handlers = <Function>[_gotoLoadingImage(), 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    void _gotoLoadingImage() {
      Navigator.pushNamed(context, LoadingImage.routeName);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widgets"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              print("container $index clicked");
              // handlers[index];
              _gotoLoadingImage();
            },
            child: Container(
              height: 50,
              color: Colors.grey[colorCodes[index%2]],
              child: Center(child: Text('${entries[index]}',style: TextStyle(color: Colors.black,fontSize: 17),),),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }


}
