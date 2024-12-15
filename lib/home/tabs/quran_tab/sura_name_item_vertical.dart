import 'package:flutter/material.dart';

class SuraNameItemVertical extends StatelessWidget {
  int index;
  int suraVerses;
  String suraNameAr;
  String suraNameEn;

  SuraNameItemVertical(
      {super.key,
      required this.index,
      required this.suraNameAr,
      required this.suraNameEn,
      required this.suraVerses});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const ImageIcon(
                      AssetImage("assets/images/star.png"),
                      color: Colors.white,
                      size: 60,
                    ),
                    Text(
                      "$index",
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$suraNameEn",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "$suraVerses Verses",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Text(
          "$suraNameAr",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
