import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/widgets/custom_listile.dart';
import 'package:ui_assignment/widgets/dash_section_title.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String defaultHistory = 'SUN';
  List<Map> checkHistory = [
    {'day': 'SUN', 'date': '1'},
    {'day': 'MON', 'date': '2'},
    {'day': 'TUE', 'date': '3'},
    {'day': 'WED', 'date': '4'},
    {'day': 'THU', 'date': '5'},
    {'day': 'FRI', 'date': '6'},
  ];
  List<Map> todaysReport = [
    {'count': '5', 'action': 'Total'},
    {'count': '3', 'action': 'Taken'},
    {'count': '1', 'action': 'Missed'},
    {'count': '1', 'action': 'Snoozed'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Report",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 2.0)
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DashSectionTitle(
                        title: 'Today`s Report',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                              List.generate(todaysReport.length, (int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  todaysReport[index]['count'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor,
                                      fontSize: 25),
                                ),
                                // SizedBox(height: 15),
                                Text(
                                  todaysReport[index]['action'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade400,
                                      fontSize: 13),
                                ),
                              ],
                            );
                          }))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 2.0)
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: ListTile(
                        title: DashSectionTitle(title: "Check Dashboard"),
                        subtitle: Text(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          'Here you will find everything related to your active and past medicines.',
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                      CircularPercentIndicator(
                        radius: 40.0,
                        animation: true,
                        animationDuration: 1200,
                        lineWidth: 10.0,
                        percent: 0.6,
                        circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: Colors.yellow.shade600,
                        progressColor: Colors.cyan.shade300,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    DashSectionTitle(title: 'Check History'),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.chevronRight,
                      color: primaryColor,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(checkHistory.length, (int index) {
                    return Column(
                      children: [
                        Text(
                          checkHistory[index]['day'],
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 13),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              defaultHistory = checkHistory[index]['day'];
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color:
                                    defaultHistory == checkHistory[index]['day']
                                        ? primaryColor
                                        : Colors.blue.shade50,
                                shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                checkHistory[index]['date'],
                                style: TextStyle(
                                    color: defaultHistory ==
                                            checkHistory[index]['day']
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                SizedBox(
                  height: 20,
                ),
                DashSectionTitle(title: 'Morning 08:00 am'),
                SizedBox(
                  height: 10,
                ),
                CustomListile(
                  shapeCircle: true,
                  icon: Icons.water_drop,
                  iconC: Colors.deepPurpleAccent.withOpacity(0.3),
                  title: "Calpol 500mg Tablet",
                  subtitle: "Before Breakfast Day 02",
                  icon2: Iconsax.notification,
                  icon2C: Colors.green,
                  icontitle: "Taken",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomListile(
                  shapeCircle: true,
                  icon: Icons.water_drop,
                  iconC: Colors.pinkAccent.withOpacity(0.3),
                  title: "Calpol 500mg Tablet",
                  subtitle: "Before Breakfast Day 27",
                  icon2: Iconsax.notification,
                  icon2C: Colors.red,
                  icontitle: "Missed",
                ),
                SizedBox(
                  height: 20,
                ),
                DashSectionTitle(title: 'Afternoon 02:00 pm'),
                SizedBox(
                  height: 10,
                ),
                CustomListile(
                  shapeCircle: true,
                  icon: Icons.water_drop,
                  iconC: Colors.deepPurpleAccent.withOpacity(0.5),
                  title: "Calpol 500mg Tablet",
                  subtitle: "After Food Day 01",
                  icon2: Iconsax.notification,
                  icon2C: Colors.orange,
                  icontitle: "Snoozed",
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
