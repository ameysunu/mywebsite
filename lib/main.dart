import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'home.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amey Sunu',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#000000"),
        body: HomePage(),
      ),
    );
  }
}
