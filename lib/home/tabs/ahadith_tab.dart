import 'package:flutter/material.dart';

class AhadithTab extends StatelessWidget {
  const AhadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Ahadith Tab",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700 ,color: Colors.white),
          ),
        )
      ],
    );
  }
}
