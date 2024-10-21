import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Presentation/modules/home_module/screens/QuranDetailsScreen/Widgets/verse_widget.dart';
import 'package:islami/Presentation/modules/home_module/tabs/Quraan_Tab/QuraanTab.dart';
import 'package:islami/Providers/ThemeProvider.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:provider/provider.dart';

class Quraandetailsscreen extends StatefulWidget {
  Quraandetailsscreen({super.key});

  @override
  State<Quraandetailsscreen> createState() => _QuraandetailsscreenState();
}

class _QuraandetailsscreenState extends State<Quraandetailsscreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<ThemeProvider>(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index + 1);
    return Stack(
      children: [
        Image.asset(
          myProvider.isLightTheme()
              ? AssetsManager.mainBgLight
              : AssetsManager.darkbg,
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VerseWidget(verse: verses[index]),
                  itemCount: verses.length,
                ),
          appBar: AppBar(
            title: Text(
              suraItem.suraName,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    setState(() {
      verses = [
        fileContent.trim()
      ]; // Storing entire content as a single list element
    });
  }
}
