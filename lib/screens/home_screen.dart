import 'package:flutter/material.dart';
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
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_moshaf.png'),
                  ),
                  label: 'Alquran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_book.png'),
                  ),
                  label: 'alhadith',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'AlSebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'Radio',
                ),
              ],
            ),
          ),
          body: getCurrentPage(),
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    if (currentpage == 0) {
      return QuranTab();
    } else if (currentpage == 1) {
      return HadithTab();
    } else if (currentpage == 2) {
      return SebhaTab();
    } else
      return RadioTab();
  }
}
