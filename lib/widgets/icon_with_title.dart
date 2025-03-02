import 'package:flutter/material.dart';

class IconWithTitle extends StatelessWidget {
  final icon;
  String string;
  final color;
  IconWithTitle(
      {super.key,
      required this.icon,
      required this.string,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.medical_information, size: 40, color: color),
        SizedBox(
          height: 5,
        ),
        Text(
          'Tablet',
          style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
