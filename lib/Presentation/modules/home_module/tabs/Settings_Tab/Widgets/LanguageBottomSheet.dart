import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Providers/LanguageProvider.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/colors_manager.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<LanguageProvider>(context);
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  langProvider.changeAppLanguage('en');
                },
                child: langProvider == 'en'
                    ? buildSelectedLanguage(
                        AppLocalizations.of(context)!.english)
                    : buildUnSelectedLanguage(
                        AppLocalizations.of(context)!.english)),
            SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  langProvider.changeAppLanguage('ar');
                },
                child: langProvider == 'ar'
                    ? buildUnSelectedLanguage(
                        AppLocalizations.of(context)!.arabic)
                    : buildUnSelectedLanguage(
                        AppLocalizations.of(context)!.arabic)),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedLanguage(String selectedLanguage) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.english,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: ColorManager.lightPrimary,
        ),
      ],
    );
  }

  Widget buildUnSelectedLanguage(String UnSelectedLanguage) {
    return Row(
      children: [
        Text(UnSelectedLanguage,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
      ],
    );
  }
}
