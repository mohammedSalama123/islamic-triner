import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_triner/model/hadeth_model.dart';
import 'package:islamic_triner/screens/hadith/hadeth_name_item.dart';

import '../../them.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset('assets/images/hadith_img.png'),
        ),
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            child: allHadeth.isEmpty
                ? Center(
                    child: const CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethNameItem(allHadeth[index]);
                    },
                    itemCount: allHadeth.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 48),
                        height: 1,
                        width: double.infinity,
                        color: MyThemDate.primeryColor,
                      );
                    },
                  ),
          ),
        )
      ],
    );
  }

  List<Hadeth> allHadeth = [];

  void loadHadethFile() async {
    for (int i = 1; i <= 50; i++) {
      String fileContent = await rootBundle.loadString('assets/hadeth/h$i.txt');
      List<String> lines = fileContent.split("\n");
      String title = lines[0];
      String content = '';
      for (int j = 1; j < lines.length; j++) {
        content += lines[j];
      }
      var h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {});
  }
}
