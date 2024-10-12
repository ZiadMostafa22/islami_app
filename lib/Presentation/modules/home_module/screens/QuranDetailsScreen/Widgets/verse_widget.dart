import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  VerseWidget({super.key, required this.verse});
  String verse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            verse,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
