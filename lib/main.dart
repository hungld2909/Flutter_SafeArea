import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
          body:
              // ToDo: Ví Dụ 1
      //         SafeArea(
      //   child: SizedBox.expand(
      //     child: Card(
      //       color: Colors.red,
      //       child: Center(
      //         child: Text("Hungld"),
      //       ),
      //     ),
      //   ),
      // )
          //ToDo: Ví Dụ 2
          SafeArea(
                    child: ListView.separated(
              itemBuilder: (BuildContext context,int index){
                return new Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(child: Text("Index: $index"),),
                  );
              },
               separatorBuilder: (context,index)=>Divider(
                 color: Colors.green,
                 indent: 20.0,
                 height: 0.0,
               ),
                itemCount:50
                ),
          ),
          ),
    );
  }
}
