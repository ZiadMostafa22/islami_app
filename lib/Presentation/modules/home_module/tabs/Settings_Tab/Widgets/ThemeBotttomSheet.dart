import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/colors_manager.dart';

class Themebotttomsheet extends StatefulWidget {
  Themebotttomsheet({super.key});

  @override
  State<Themebotttomsheet> createState() => _ThemebotttomsheetState();
}

class _ThemebotttomsheetState extends State<Themebotttomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSelectedItemThemeWidget(AppLocalizations.of(context)!.light),
            SizedBox(
              height: 15,
            ),
            buildUnselectedItemThemeWidget(AppLocalizations.of(context)!.dark),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: TextStyle(fontSize: 20),
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: ColorManager.goldColor,
        ),
      ],
    );
  }

  Widget buildUnselectedItemThemeWidget(String unSelectedTheme) {
    return Text(unSelectedTheme,
      style: TextStyle(fontSize: 18),
    );
  }
}
