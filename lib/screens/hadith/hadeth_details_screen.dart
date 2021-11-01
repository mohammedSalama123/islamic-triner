import 'package:flutter/material.dart';
import 'package:islamic_triner/model/hadeth_model.dart';

import '../../them.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const routName = 'HadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
              args.title,
              style: TextStyle(
                  color: MyThemDate.titleAppBarColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                  child: Text(
                args.content,
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(24)),
            ),
          ),
        ),
      ],
    );
  }
}
