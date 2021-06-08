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
        theme: ThemeData(primarySwatch: Palette.kToDark,fontFamily: 'Poppins'),
        home: BoardingScreen());
  }
}

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff786DF5, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff786DF5), //10%
      100: const Color(0xff786DF5), //20%
      200: const Color(0xff786DF5), //30%
      300: const Color(0xff786DF5), //40%
      400: const Color(0xff786DF5), //50%
      500: const Color(0xff786DF5), //60%
      600: const Color(0xff786DF5), //70%
      700: const Color(0xff786DF5), //80%
      800: const Color(0xff786DF5), //90%
      900: const Color(0xff786DF5), //100%
    },
  );
}
