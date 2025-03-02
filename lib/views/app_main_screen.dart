import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/views/add_medicines.dart';
import 'package:ui_assignment/views/home_screen.dart';
import 'package:ui_assignment/views/report_screen.dart';

class AppMainscreen extends StatefulWidget {
  const AppMainscreen({super.key});

  @override
  State<AppMainscreen> createState() => _AppMainscreenState();
}

class _AppMainscreenState extends State<AppMainscreen> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page = [
      HomeScreen(),
      // navBarPage(Iconsax.heart5),
      ReportScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            shape: CircleBorder(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddMedicines()));
            }),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            elevation: 0,
            iconSize: 28,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle:
                TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            onTap: (val) {
              setState(() {
                selectedIndex = val;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon:
                      Icon(selectedIndex == 0 ? Iconsax.home5 : Iconsax.home_1),
                  label: 'Home'),
              // BottomNavigationBarItem(
              //     icon:
              //         Icon(selectedIndex == 1 ? Iconsax.heart5 : Iconsax.heart),
              //     label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(selectedIndex == 1
                      ? Iconsax.receipt_21
                      : Iconsax.receipt),
                  label: 'Report')
            ]),
        body: page[selectedIndex]);
  }

  navBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: primaryColor,
      ),
    );
  }
}
