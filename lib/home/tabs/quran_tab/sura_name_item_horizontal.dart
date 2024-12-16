import 'package:flutter/material.dart';
import 'package:islamy/models/sura_details_model.dart';

class SuraNameItemHorizontal extends StatelessWidget {
  SuraDetailsModel suraModel ;

  SuraNameItemHorizontal(
      {super.key,
      required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffE2BE7F),
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
                  suraModel.suraNameEn,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  suraModel.suraNameAr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${suraModel.suraVerses} Verses",
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
