import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../Providers/ThemeProvider.dart';
import '../../../../../../core/colors_manager.dart';

class Settingslabels extends StatelessWidget {
  String Label;

  Settingslabels({super.key, required this.Label});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);
    return Text(
      Label,
      style: TextStyle(
        fontSize: 25,
        color: myProvider.isLightTheme()
            ? ColorManager.lightPrimary
            : ColorManager.yellow,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
