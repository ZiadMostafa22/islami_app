import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithHeader extends StatelessWidget {
  const HadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Theme.of(context).dividerColor, width: 3))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          AppLocalizations.of(context)!.hadithHeader,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
