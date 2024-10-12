import 'package:flutter/material.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Quraan_Tab/QuraanTab.dart';
import 'package:islami/core/colors_manager.dart';
import 'package:islami/core/routes_manager.dart';

class Suranamewidget extends StatelessWidget {
  SuraItem suraItem;

  Suranamewidget({super.key, required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.quraanDetails,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(textDirection: TextDirection.rtl, children: [
          Expanded(
              flex: 2,
              child: Text(
                suraItem.suraName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              )),
          Container(
            color: ColorManager.goldColor,
            width: 3,
          ),
          Expanded(
              flex: 2,
              child: Text(
                suraItem.versesNumber,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              )),
        ]),
      ),
    );
  }
}
