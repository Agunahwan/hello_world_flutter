import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Widget> myList = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 20 + double.parse(index.toString()),
      ),
    ),
  );

  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: myList,
        ),
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     return Divider(
        //       color: Colors.black,
        //     );
        //   },
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),
        // body: Center(
        //   child: Text(
        //     "HALO",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       backgroundColor: Colors.amber,
        //       color: Colors.white,
        //       fontSize: 30,
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 3,
        //       fontFamily: 'Stick',
        //       decoration: TextDecoration.lineThrough,
        //       decorationStyle: TextDecorationStyle.wavy,
        //       decorationColor: Colors.white,
        //       decorationThickness: 2,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
