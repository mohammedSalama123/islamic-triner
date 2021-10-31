import 'package:flutter/material.dart';
import 'package:islamic_triner/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
