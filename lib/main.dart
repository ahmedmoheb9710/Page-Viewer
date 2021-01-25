import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
final controller = PageController(initialPage: 0);
final pageView = PageView(
  controller: controller,scrollDirection: Axis.vertical,
  children: [page1(),page2(),page3()],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title:"Page View Widget",
      home: Scaffold(
        appBar: AppBar(title:Text("Page View Widget")),
        body: Center(child: pageView,),
      ),
    );
  }

}
Widget page1(){
  return Container(
    color: Colors.blue,
    child: Text("page view 1 ",style: TextStyle(fontSize: 40),),
  );
}
Widget page2(){
  return Container(
    color: Colors.red,
    child: Text("page view 2 ",style: TextStyle(fontSize: 40),),
  );
}
Widget page3(){
  return Container(
    color: Colors.blueGrey,
    child: Text("page view 3 ",style: TextStyle(fontSize: 40),),
  );
}