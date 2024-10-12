import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../core/colors_manager.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSelectedLanguage(AppLocalizations.of(context)!.arabic),
            SizedBox(
              height: 15,
            ),
            buildUnSelectedLanguage(AppLocalizations.of(context)!.english),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedLanguage(String selectedLanguage) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.arabic,
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

  Widget buildUnSelectedLanguage(String UnSelectedLanguage) {
    return Text(AppLocalizations.of(context)!.english,
        style: TextStyle(fontSize: 20));
  }
}
