import 'package:flutter/material.dart';

class SuraNameItemHorizontal extends StatelessWidget {
  int suraVerses;
  String suraNameAr;
  String suraNameEn;

  SuraNameItemHorizontal(
      {super.key,
      required this.suraNameAr,
      required this.suraNameEn,
      required this.suraVerses});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffE2BE7F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$suraNameEn",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "$suraNameAr",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "$suraVerses Verses",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/images/sura_horizontal.png",
            ),
          ],
        ),
      ),
    );
  }
}
