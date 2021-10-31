import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_triner/screens/hadith/hadith_tab.dart';
import 'package:islamic_triner/screens/quran/quran_tab.dart';
import 'package:islamic_triner/screens/radio/radio_tab.dart';
import 'package:islamic_triner/screens/sebha/sebha_tab.dart';
import 'package:islamic_triner/them.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg3.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: TextStyle(color: MyThemDate.titleAppBarColor),
            ),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemDate.primeryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentpage = index;
                setState(() {});
              },
              currentIndex: currentpage,
              items: [
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/icon_moshaf.png'),
                  ),
                  label: AppLocalizations.of(context)!.quran_tab,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/icon_book.png'),
                  ),
                  label: AppLocalizations.of(context)!.hadith_tab,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: AppLocalizations.of(context)!.sebha_tab,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: AppLocalizations.of(context)!.radio_tab,
                ),
              ],
            ),
          ),
          body: Container(child: tabScreens[currentpage]),
        ),
      ],
    );
  }

  List<Widget> tabScreens = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
  ];
}
