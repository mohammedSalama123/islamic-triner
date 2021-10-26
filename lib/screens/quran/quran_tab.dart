import 'package:flutter/material.dart';
import 'package:islamic_triner/model/quran.dart';
import 'package:islamic_triner/screens/quran/surah_name_item.dart';
import 'package:islamic_triner/them.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/moshaf_image.png'),
        ),
        SizedBox(
          height: 24,
          child: Divider(
            height: 3,
            thickness: 3,
            color: MyThemDate.primeryColor,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'عدد الايات',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                    Text(
                      'اسم السوره',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                  child: Divider(
                    height: 3,
                    thickness: 3,
                    color: MyThemDate.primeryColor,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 1,
                        width: double.infinity,
                        color: MyThemDate.primeryColor,
                      );
                    },
                    itemBuilder: (context, index) {
                      return SurahNameItem(
                        QuranItem.surahNames[index],
                        index,
                        QuranItem.ayatNambars[index],
                      );
                    },
                    itemCount: QuranItem.surahNames.length,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
