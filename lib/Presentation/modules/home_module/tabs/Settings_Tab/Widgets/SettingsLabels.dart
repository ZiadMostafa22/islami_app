import 'package:flutter/material.dart';

import '../../../../../../core/colors_manager.dart';

class Settingslabels extends StatelessWidget {
  String Label;

  Settingslabels({super.key, required this.Label});

  @override
  Widget build(BuildContext context) {
    return Text(
      Label,
      style: TextStyle(
        fontSize: 25,
        color: ColorManager.goldColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
