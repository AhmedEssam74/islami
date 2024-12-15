import 'package:flutter/material.dart';
import 'package:islamy/home/tabs/quran_tab/sura_name_item_horizontal.dart';
import 'package:islamy/home/tabs/quran_tab/sura_name_item_vertical.dart';
import 'package:islamy/models/sura_details_model.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                "assets/images/header_bg.png",
                width: double.infinity,
                height: 170,
              )),
          _searchSuraItem(),
          _suraNamesHorizontalList(),
          _suraNamesVerticalList(),
        ],
      ),
    );
  }

  // Sura Horizontal List
  Widget _suraNamesHorizontalList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Most Recently",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Horizontal List
        Container(
          width: double.infinity,
          height: 150,
          // color: Colors.red,
          child: Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                scrollDirection: Axis.horizontal,
                itemCount: SuraDetailsModel.suraNameArabic.length,
                itemBuilder: (context, index) {
                  return SuraNameItemHorizontal(
                    suraModel: SuraDetailsModel.getSuraModel(index)
                  );
                }),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  //sura Vertical List
  Widget _suraNamesVerticalList() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Sura Details
          const Text(
            "Sura List",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          // Vertical List
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.white,
                height: 3,
                endIndent: 40,
                indent: 40,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: SuraNameItemVertical(
                    suraModel: SuraDetailsModel.getSuraModel(index),
                  ),
                );
              },
              itemCount: SuraDetailsModel.length,
            ),
          ),
        ],
      ),
    );
  }

  // Search Button
  Widget _searchSuraItem() {
    return Column(
      children: [
        TextField(
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xb3202020),
            focusColor: Colors.white,
            hintText: "Sura Name",
            hintStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            prefixIcon: const ImageIcon(
              AssetImage("assets/images/quran.png"),
              color: Color(0xffE2BE7F),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xffE2BE7F)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xffE2BE7F)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xffE2BE7F)),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
