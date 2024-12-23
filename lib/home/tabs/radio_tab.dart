import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Dates Tab",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.white),
          ),
        )
      ],
    );
  }
}
