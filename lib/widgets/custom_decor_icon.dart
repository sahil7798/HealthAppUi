import 'package:flutter/material.dart';

class CustomDecorIcon extends StatelessWidget {
  String title;
  final icon;
  CustomDecorIcon({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.grey.shade900, fontWeight: FontWeight.w500),
          ),
          Icon(
            icon,
            size: 20,
            color: Colors.grey.shade600,
          )
        ],
      )),
    );
  }
}
