import 'package:flutter/material.dart';
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
            buildSelectedItemThemeWidget('Light'),
            buildUnselectedItemThemeWidget('Dark'),
            SizedBox(
              height: 8,
            ),
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
          style: Theme.of(context).textTheme.displayMedium,
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
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: Colors.black));
  }
}
