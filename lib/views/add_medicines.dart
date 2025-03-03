import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/widgets/custom_buttton.dart';
import 'package:ui_assignment/widgets/custom_decor.dart';
import 'package:ui_assignment/widgets/custom_decor_icon.dart';
import 'package:ui_assignment/widgets/icon_with_title.dart';
import 'package:ui_assignment/widgets/medicine_heading.dart';

class AddMedicines extends StatefulWidget {
  const AddMedicines({super.key});

  @override
  State<AddMedicines> createState() => _AddMedicinesState();
}

class _AddMedicinesState extends State<AddMedicines> {
  String defaultcolor = "pink";
  String defaultTime = 'Before Food';
  var slectedColor = Colors.pinkAccent.withOpacity(0.5);
  String selectedCompartment = '1';
  List<Map> takingTime = [
    {'time': 'Before Food'},
    {'time': 'After Food'},
    {'time': 'After Sleep'}
  ];
  List<Map> compartment = [
    {
      'number': '1',
    },
    {
      'number': '2',
    },
    {
      'number': '3',
    },
    {
      'number': '4',
    },
    {
      'number': '5',
    },
    {
      'number': '6',
    },
    {
      'number': '7',
    },
    {
      'number': '8',
    },
    {
      'number': '9',
    },
    {
      'number': '10',
    },
  ];
  List<Map> color = [
    {
      'name': 'pink',
      'colorCode': Colors.pinkAccent.withOpacity(0.5),
    },
    {
      'name': 'red',
      'colorCode': Colors.redAccent.withOpacity(0.5),
    },
    {
      'name': 'purple',
      'colorCode': Colors.purpleAccent.withOpacity(0.5),
    },
    {
      'name': 'green',
      'colorCode': Colors.greenAccent.withOpacity(0.5),
    },
    {
      'name': 'orange',
      'colorCode': Colors.orangeAccent.withOpacity(0.5),
    },
    {
      'name': 'blue',
      'colorCode': Colors.blueAccent.withOpacity(0.5),
    },
    {
      'name': 'yellow',
      'colorCode': Colors.yellow.withOpacity(0.5),
    },
  ];

  List dose = [1, 2, 3];
  double _sliderValue = 1;
  List type = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(FontAwesomeIcons.chevronLeft, color: Colors.black),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: TextField(
                        // onChanged: (value) => _runFilter(value),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          hintText: "Search Medicine Name",
                          prefixIcon: Icon(Iconsax.search_normal_1),
                          hintStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                          suffixIcon: const Icon(Iconsax.microphone_2),
                          // prefix: Icon(Icons.search),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'Compartment',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                            List.generate(compartment.length, (int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCompartment =
                                    compartment[index]['number'];
                              });
                            },
                            child: Container(
                              height: 55,
                              width: 45,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: selectedCompartment ==
                                          compartment[index]['number']
                                      ? Colors.blue.shade50.withOpacity(0.8)
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 01.0)
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: primaryColor)),
                              child: Center(
                                child: Text(
                                  compartment[index]['number'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'Colour',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(color.length, (int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                defaultcolor = color[index]['name'];
                                slectedColor = color[index]['colorCode'];
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          defaultcolor == color[index]['name']
                                              ? primaryColor
                                              : Colors.transparent,
                                      width: 1),
                                  color: color[index]['colorCode'],
                                  shape: BoxShape.circle),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'Type',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWithTitle(
                          color: slectedColor,
                          icon: Icon(Icons.notifications),
                          string: 'Tablet',
                        ),
                        IconWithTitle(
                          color: slectedColor,
                          icon: Icon(Icons.notifications),
                          string: 'Tablet',
                        ),
                        IconWithTitle(
                          color: slectedColor,
                          icon: Icon(Icons.notifications),
                          string: 'Tablet',
                        ),
                        IconWithTitle(
                          color: slectedColor,
                          icon: Icon(Icons.notifications),
                          string: 'Tablet',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'Quantity',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomDecor(
                            title:
                                "Take ${_sliderValue.toStringAsFixed(0)}/2 Pills",
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_sliderValue > 1) {
                                _sliderValue--;
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.add,
                              color: primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_sliderValue < 2) {
                                _sliderValue++;
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MedicineHeading(
                          title: 'Total Count',
                        ),
                        Container(
                          height: 25,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 0.1)
                            ],
                          ),
                          child: Center(
                            child: Text(
                              _sliderValue.toStringAsFixed(0),
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Slider(
                      value: _sliderValue,
                      min: 1,
                      max: 100,
                      //label: _sliderValue.round().toString(),
                      activeColor: primaryColor,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _sliderValue.toStringAsFixed(0),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'Set Date',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomDecorIcon(
                            title: 'Today',
                            icon: FontAwesomeIcons.chevronRight,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomDecorIcon(
                            title: 'Date',
                            icon: FontAwesomeIcons.chevronRight,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'Frequency of Days',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomDecorIcon(
                      title: 'Every Day',
                      icon: FontAwesomeIcons.chevronRight,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MedicineHeading(
                      title: 'How many timed a Day',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomDecorIcon(
                      title: 'Three Time',
                      icon: FontAwesomeIcons.chevronRight,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: List.generate(dose.length, (int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Iconsax.clock,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Dose ${dose[index]}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  Spacer(),
                                  Icon(FontAwesomeIcons.chevronRight,
                                      color: Colors.grey.shade600, size: 17)
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider()
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        takingTime.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              defaultTime =
                                  defaultTime = takingTime[index]['time'];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: defaultTime == takingTime[index]['time']
                                  ? primaryColor
                                  : Colors.blueAccent.withOpacity(0.2),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Center(
                              child: Text(
                                takingTime[index]['time'],
                                style: TextStyle(
                                  color:
                                      defaultTime == takingTime[index]['time']
                                          ? Colors.white
                                          : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(title: "Add", press: () {}),
                    SizedBox(
                      height: 20,
                    ),
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
