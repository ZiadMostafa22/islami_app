import 'package:flutter/material.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/HadeethTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Quraan_Tab/QuraanTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Radio_Tab/RadioTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/SettingsTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Tasbeeh_Tab/TasbeehTab.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:islami/core/colors_manager.dart';
import 'package:islami/core/strings_manager.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> tabs = [
    Quraantab(),
    HadeethTabScreen(),
    const TasbeehTab(),
    const RadioTab(),
    Settingstab(),
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.mainBgLight),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          currentIndex: selectedindex,
          onTap: (index) {
            selectedindex = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorManager.goldColor,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.quraan)),
              label: StringsManager.QuraanLabel,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.hadeeth)),
              label: StringsManager.HadeethLabel,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.sebha)),
              label: StringsManager.SebhaLabel,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.radio)),
              label: StringsManager.RadioLabel,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: StringsManager.SettingsLabel,
            ),
          ],
        ),
        body: tabs[selectedindex],
      ),
    );
  }
}
