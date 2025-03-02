import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: Divider(
              color: const Color(0xFFC0C0C0),
              height: 36,
            )),
      ),
      Text(
        "OR",
        style: TextStyle(color: Colors.grey.shade500),
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Divider(
              color: Color(0xFFC0C0C0),
              height: 36,
            )),
      ),
    ]);
  }
}
