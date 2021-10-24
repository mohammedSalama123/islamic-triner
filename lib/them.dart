import 'package:flutter/material.dart';

class MyThemDate {
  static final Color primeryColor = Color(0xffB7935F);
  static final Color blackColor = Colors.black;
  static final Color whiteColor = Colors.white;
  static final ThemeData lightThem = ThemeData(
    primaryColor: MyThemDate.primeryColor,
    bottomAppBarColor: MyThemDate.primeryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: MyThemDate.primeryColor,
        selectedItemColor: MyThemDate.blackColor,
        unselectedItemColor: MyThemDate.whiteColor,
        selectedIconTheme:
            IconThemeData(color: MyThemDate.blackColor, size: 30),
        unselectedIconTheme:
            IconThemeData(color: MyThemDate.whiteColor, size: 24)),
  );
}
