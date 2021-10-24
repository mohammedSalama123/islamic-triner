import 'package:flutter/material.dart';
import 'package:islamic_triner/screens/home_screen.dart';
import 'package:islamic_triner/them.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemDate.lightThem,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
