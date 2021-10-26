import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_triner/model/sura_datails_args.dart';

import '../../them.dart';

class SurahDatailsScreen extends StatefulWidget {
  static const String routName = 'surah details';

  @override
  State<SurahDatailsScreen> createState() => _SurahDatailsScreenState();
}

class _SurahDatailsScreenState extends State<SurahDatailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SurahDatailsArgs;
    loadSurahDatiles(args.surahIndex);

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
              '${args.surahName}',
              style: TextStyle(
                color: MyThemDate.titleAppBarColor,
                fontSize: 24,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 1,
                        width: double.infinity,
                        color: MyThemDate.primeryColor,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          verses[index] + '${index + 1}',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      );
                    },
                    itemCount: verses.length,
                  ),
          ),
        ),
      ],
    );
  }

  loadSurahDatiles(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> ayat = fileContent.split('\n');
    this.verses = ayat;

    setState(() {});
  }
}
