import 'package:flutter/material.dart';

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
            buildSelectedLanguage('English'),
            SizedBox(
              height: 8,
            ),
            buildUnSelectedLanguage('العربية'),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedLanguage(String selectedLanguage) {
    return Row(
      children: [
        Text(
          'English',
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

  Widget buildUnSelectedLanguage(String UnSelectedLanguage) {
    return Text('العربية',
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: Colors.black));
  }
}
