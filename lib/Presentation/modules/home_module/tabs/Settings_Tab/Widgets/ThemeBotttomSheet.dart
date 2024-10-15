import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:islami/core/colors_manager.dart';
import 'package:provider/provider.dart';

class Themebotttomsheet extends StatefulWidget {
  Themebotttomsheet({super.key});

  @override
  State<Themebotttomsheet> createState() => _ThemebotttomsheetState();
}

class _ThemebotttomsheetState extends State<Themebotttomsheet> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  themeProvider.changeAppTheme(ThemeMode.light);
                },
                child: themeProvider.currentTheme == ThemeMode.light
                    ? buildSelectedItemThemeWidget(
                        AppLocalizations.of(context)!.light)
                    : buildUnselectedItemThemeWidget(
                        AppLocalizations.of(context)!.light)),
            SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  themeProvider.changeAppTheme(ThemeMode.dark);
                },
                child: themeProvider.currentTheme == ThemeMode.dark
                    ? buildSelectedItemThemeWidget(
                        AppLocalizations.of(context)!.dark)
                    : buildUnselectedItemThemeWidget(
                        AppLocalizations.of(context)!.dark)),
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
          color: ColorManager.lightPrimary,
        ),
      ],
    );
  }

  Widget buildUnselectedItemThemeWidget(String unSelectedTheme) {
    return Row(
      children: [
        Text(unSelectedTheme,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
      ],
    );
  }
}
