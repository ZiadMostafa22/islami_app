import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../core/colors_manager.dart';

class Quraanheaderwidget extends StatelessWidget {
  const Quraanheaderwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        width: 3,
        color: Theme.of(context).dividerColor,
      ))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.versesNumber,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
              width: 3,
              color: ColorManager.lightPrimary,
            ),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.chapterName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
