import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/models/sura_details_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suraDetailsScreen";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    var suraModel =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsModel;
    if (suraLines.isEmpty) {
      loadSuraFiles(suraModel.index + 1);
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xffE2BE7F),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          suraModel.suraNameEn,
          style: const TextStyle(
              color: Color(0xffE2BE7F),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/sura_details_bg.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    suraModel.suraNameAr,
                    style: const TextStyle(
                        color: Color(0xffE2BE7F),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Color(0xffE2BE7F),
                            )),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "${suraLines[index]}",
                                  style: const TextStyle(
                                      color: Color(0xffE2BE7F),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text: "[${index + 1}]",
                                  style: const TextStyle(
                                      color: Color(0xffE2BE7F),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: suraLines.length,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  loadSuraFiles(int index) async {
    String suraFile = await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines = suraFile.split("\n");
    print(lines);
    suraLines = lines;
    setState(() {});
  }
}
