import 'package:flutter/material.dart';
import 'package:islamic_triner/model/sura_datails_args.dart';
import 'package:islamic_triner/screens/quran/surah_detels_screen.dart';

import '../../them.dart';

class SurahNameItem extends StatelessWidget {
  String surahName;
  String ayatName;
  int surahIndex;

  SurahNameItem(this.surahName, this.surahIndex, this.ayatName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SurahDatailsScreen.routName,
          arguments: SurahDatailsArgs(surahName, surahIndex),
        );
      },
      splashColor: MyThemDate.primeryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              '${ayatName}',
              style: TextStyle(fontSize: 24),
              textDirection: TextDirection.rtl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text(
              "${surahName}",
              style: TextStyle(fontSize: 24),
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
