import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_assignment/provider/profile_provider.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/views/profile_screen.dart';
import 'package:ui_assignment/views/report_screen.dart';
import 'package:ui_assignment/widgets/custom_listile.dart';
import 'package:ui_assignment/widgets/dash_section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Harry!',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Text(
                            "5 Medicines Left",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.briefcaseMedical,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ProfileScreen()));
                      },
                      child: CircleAvatar(
                        // backgroundColor: Colors.red,
                        backgroundColor: primaryColor,
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 20,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Center(
                      child: Text(
                        "Saturday, Sep 3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(FontAwesomeIcons.chevronRight,
                      size: 20, color: primaryColor),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DashSectionTitle(title: 'Morning 08:00 am'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomListile(
                      shapeCircle: false,
                      icon: Icons.water_drop,
                      iconC: Colors.pinkAccent.withOpacity(0.3),
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
                      iconC: Colors.blueAccent.withOpacity(0.3),
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
                      iconC: Colors.deepPurpleAccent.withOpacity(0.3),
                      title: "Calpol 500mg Tablet",
                      subtitle: "Before Breakfast Day 02",
                      icon2: Iconsax.notification,
                      icon2C: Colors.orange,
                      icontitle: "Snoozed",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DashSectionTitle(title: 'Night 09:00 pm'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomListile(
                      shapeCircle: false,
                      icon: Icons.water_drop,
                      iconC: Colors.redAccent.withOpacity(0.3),
                      title: "Calpol 500mg Tablet",
                      subtitle: "Before Breakfast Day 03",
                      icon2: Iconsax.notification,
                      icon2C: Colors.grey,
                      icontitle: "Left",
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
