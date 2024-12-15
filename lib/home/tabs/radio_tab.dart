import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Radio Tab",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.white),
          ),
        )
      ],
    );
  }
}
