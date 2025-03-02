import 'package:flutter/material.dart';

class DashSectionTitle extends StatelessWidget {
  final String title;
  const DashSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      title,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.grey.shade800,
          fontSize: 16),
    );
  }
}
