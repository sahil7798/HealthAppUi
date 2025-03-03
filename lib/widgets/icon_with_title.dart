import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        Icon(FontAwesomeIcons.capsules, size: 40, color: color),
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
