import 'package:flutter/material.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:islami/core/colors_manager.dart';
import 'package:provider/provider.dart';

import '../../../../../Providers/ThemeProvider.dart';

class TasbeehTab extends StatefulWidget {
  TasbeehTab({super.key});

  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  List<String> tasbeh = [
    'سبحان اللهِ',
    'الحمدلله',
    'الله اكبر',
    'لا اله الا الله',
  ];

  int counter = 0;
  int tasbehIndex = 0;
  double rotationTurns = 0;

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 80,
          left: 190,
          width: 73,
          height: 105,
          // Use correct image for the sebha head
          child: Image.asset(
            myProvider.isLightTheme()
                ? AssetsManager.headSebha
                : AssetsManager.darkHeadSebha,
          ),
        ),
        Positioned(
          top: 160,
          left: 78,
          width: 232,
          height: 234,
          child: Padding(
            padding: const EdgeInsets.all(0.2),
            child: AnimatedRotation(
              turns: rotationTurns,
              duration: Duration(milliseconds: 500),
              // Use correct image for the sebha body
              child: Image.asset(myProvider.isLightTheme()
                  ? AssetsManager.Sebhabody
                  : AssetsManager.darkSebha),
            ),
          ),
        ),
        Positioned(
          top: 450,
          left: 141,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: myProvider.isLightTheme()
                  ? ColorManager.lightPrimary
                  : ColorManager.yellow,
            ),
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
            child: SizedBox(
              height: 40,
              width: 60,
              child: Text(
                '$counter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 520,
          left: 110,
          child: SizedBox(
            width: 165,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  rotationTurns += 1 / 33;

                  if (counter == 33) {
                    counter = 0;
                    tasbehIndex++;
                    if (tasbehIndex == tasbeh.length) {
                      tasbehIndex = 0;
                    }
                  }
                });
              },
              child: Text(
                tasbeh[tasbehIndex],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
