import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Hadeeth_Tab/HadeethTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Quraan_Tab/QuraanTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Settings_Tab/SettingsTab.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Tasbeeh_Tab/TasbeehTab.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> tabs = [
    Quraantab(),
    HadeethTabScreen(),
    TasbeehTab(),
    Settingstab(),
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(myProvider.isLightTheme()
              ? AssetsManager.mainBgLight
              : AssetsManager.darkbg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            titleTextStyle: GoogleFonts.readexPro(fontSize: 30)),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 45,
          currentIndex: selectedindex,
          onTap: (index) {
            selectedindex = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.quraan)),
              label: AppLocalizations.of(context)!.quranTab,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.hadeeth)),
              label: AppLocalizations.of(context)!.hadeethTab,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.sebha)),
              label: AppLocalizations.of(context)!.sebhaTab,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settingsTab,
            ),
          ],
        ),
        body: tabs[selectedindex],
      ),
    );
  }
}
