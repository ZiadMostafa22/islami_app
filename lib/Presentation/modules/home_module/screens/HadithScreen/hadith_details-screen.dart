import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/HadeethTab.dart';
import 'package:islami/core/assets_manager.dart';

class HadithDetailsscreen extends StatelessWidget {
  const HadithDetailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.mainBgLight), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80),
          child: Card(
            elevation: 50,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      hadithArgs.title,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    color: Colors.white,
                    height: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      hadithArgs.content,
                      style: TextStyle(fontSize: 23),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
