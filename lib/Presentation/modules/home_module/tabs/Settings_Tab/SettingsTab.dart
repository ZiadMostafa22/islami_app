import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/Widgets/LanguageBottomSheet.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/Widgets/SettingsContainer.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/Widgets/SettingsLabels.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/Widgets/ThemeBotttomSheet.dart';

class Settingstab extends StatelessWidget {
  const Settingstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Settingslabels(Label: AppLocalizations.of(context)!.theme),
            const SizedBox(height: 4),
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Themebotttomsheet(),
                  );
                },
                child: Settingscontainer(
                    Label: AppLocalizations.of(context)!.light)),
            const SizedBox(height: 10),
            Settingslabels(Label: AppLocalizations.of(context)!.language),
            // Removed 'const'
            const SizedBox(height: 4),
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Languagebottomsheet(),
                  );
                },
                child: Settingscontainer(
                    Label: AppLocalizations.of(context)!.english)),
          ],
        ),
      ),
    );
  }
}
