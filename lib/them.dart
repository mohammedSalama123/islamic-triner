import 'package:flutter/material.dart';

class MyThemDate {
  static final Color primeryColor = Color(0xffB7935F);
  static final Color selectItemColor = Colors.black;
  static final Color unselectedItemColor = Colors.white;
  static final Color titleAppBarColor = Colors.black;

  static final ThemeData lightThem = ThemeData(
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: MyThemDate.primeryColor,
    ),
    primaryColor: MyThemDate.primeryColor,
    bottomAppBarColor: MyThemDate.primeryColor,
    appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: MyThemDate.primeryColor,
        selectedItemColor: MyThemDate.selectItemColor,
        unselectedItemColor: MyThemDate.unselectedItemColor,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 24)),
  );
}
