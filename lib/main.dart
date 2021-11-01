import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic_triner/screens/hadith/hadeth_details_screen.dart';
import 'package:islamic_triner/screens/home_screen.dart';
import 'package:islamic_triner/screens/quran/surah_detels_screen.dart';
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
        SurahDatailsScreen.routName: (context) => SurahDatailsScreen(),
        HadethDetailsScreen.routName: (context) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routName,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),
    );
  }
}
