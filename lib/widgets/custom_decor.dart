import 'package:flutter/material.dart';

class CustomDecor extends StatelessWidget {
  String title;
  CustomDecor({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
      )),
    );
  }
}
