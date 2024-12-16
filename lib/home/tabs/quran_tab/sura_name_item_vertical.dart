import 'package:flutter/material.dart';
import 'package:islamy/models/sura_details_model.dart';
import 'package:islamy/sura_details/sura_details.dart';

class SuraNameItemVertical extends StatelessWidget {
  SuraDetailsModel suraModel;

  SuraNameItemVertical({super.key, required this.suraModel});

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
                      "${suraModel.index +1}",
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
                      suraModel.suraNameEn,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "${suraModel.suraVerses} Verses",
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
          suraModel.suraNameAr,
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
