import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Sebha Tab",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.white),
          ),
        )
      ],
    );
  }
}
