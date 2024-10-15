import 'package:flutter/material.dart';

import '../../../../../../core/colors_manager.dart';

class Settingscontainer extends StatelessWidget {
  String Label;

  Settingscontainer({super.key, required this.Label});

  @override
  Widget build(BuildContext context) {
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
          Label,
          style: TextStyle(
            fontSize: 21,
            color: ColorManager.lightPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
