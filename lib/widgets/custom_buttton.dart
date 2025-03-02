import 'package:flutter/material.dart';
import 'package:ui_assignment/utils/constatnts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const CustomButton({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          onPressed: press,
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          )),
    );
  }
}
