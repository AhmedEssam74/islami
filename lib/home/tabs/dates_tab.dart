import 'package:flutter/material.dart';

class DatesTab extends StatelessWidget {
  const DatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
