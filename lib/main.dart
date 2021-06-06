import 'package:flutter/material.dart';
import 'package:trackingapp/pages/boarding_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tracking',
         debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch:Colors.purple),
        home: BoardingScreen());
  }
}
