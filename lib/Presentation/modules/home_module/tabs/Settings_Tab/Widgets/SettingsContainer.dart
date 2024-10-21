import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../Providers/ThemeProvider.dart';
import '../../../../../../core/colors_manager.dart';

class Settingscontainer extends StatelessWidget {
  final String Label;

  Settingscontainer({super.key, required this.Label});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).dividerColor, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          Label, // Use the passed Label instead of hardcoding the text
          style: TextStyle(
            fontSize: 21,
            color: myProvider.isLightTheme()
                ? ColorManager.lightPrimary
                : ColorManager.darkPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
