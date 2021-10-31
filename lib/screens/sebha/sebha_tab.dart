import 'package:flutter/material.dart';
import 'package:islamic_triner/them.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with TickerProviderStateMixin {
  int sebhaIndex = 0;
  int tasbehIndex = 0;
  List<String> tasbeh = [
    'استغفر الله',
    'سبحان الله',
    'الحمد الله',
    'الله اكبر',
  ];
  late AnimationController animationController;
  double start = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 700));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (sebhaIndex < 33) {
                  sebhaIndex++;
                } else {
                  tasbehIndex += 1;
                  sebhaIndex = 0;
                  if (tasbehIndex > 3) {
                    tasbehIndex = 0;
                  }
                }
              });
            },
            child: RotationTransition(
              turns: Tween(begin: start, end: start += 0.03)
                  .animate(animationController),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Image.asset('assets/images/headsebha.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 75),
                    child: Image.asset('assets/images/bodysebha.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Text(
          'عدد التسبيحات ',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 30),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyThemDate.primeryColor),
          alignment: Alignment.center,
          child: Text(
            '$sebhaIndex',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyThemDate.primeryColor),
          alignment: Alignment.center,
          child: Text(
            tasbeh[tasbehIndex],
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
