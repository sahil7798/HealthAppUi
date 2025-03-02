import 'package:flutter/material.dart';

class MedicineHeading extends StatelessWidget {
  final String title;
  const MedicineHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      title,
      style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade800,
          fontSize: 15),
    );
  }
}
