import 'package:flutter/material.dart';
import 'package:islamic_triner/model/hadeth_model.dart';
import 'package:islamic_triner/screens/hadith/hadeth_details_screen.dart';

import '../../them.dart';

class HadethNameItem extends StatelessWidget {
  Hadeth hadeth;

  HadethNameItem(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routName,
            arguments: hadeth);
      },
      splashColor: MyThemDate.primeryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            hadeth.title,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
