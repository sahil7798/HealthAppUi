import 'package:flutter/material.dart';

class CustomListile extends StatelessWidget {
  final icon, icon2;
  final Color iconC, icon2C;
  String title, subtitle, icontitle;
  bool shapeCircle;

  CustomListile({
    super.key,
    required this.icon,
    required this.icon2,
    required this.title,
    required this.subtitle,
    required this.icontitle,
    required this.shapeCircle,
    required this.iconC,
    required this.icon2C,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(10)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: shapeCircle
                ? CircleAvatar(
                    //   Colors.deepPurpleAccent.withOpacity(0.5),
                    radius: 25,
                    backgroundColor: iconC,
                    child: Center(
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: iconC,
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle),
                    child: Center(
                        child: Icon(
                      icon,
                      color: Colors.white,
                    )),
                  ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  title,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 2.5,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                icon2,
                color: icon2C,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                icontitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              )
            ],
          )
        ],
      ),
    );
  }
}
