import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:ui_assignment/provider/profile_provider.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/views/app_main_screen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map> settings = [
    {
      "icon": Iconsax.notification,
      "title": "Notification",
      "subtitle": "Check your medicine notification"
    },
    {
      "icon": Iconsax.speaker,
      "title": "Sound",
      "subtitle": "Ring, Silent, Vibrate"
    },
    {
      "icon": Iconsax.user,
      "title": "Manage Your Account",
      "subtitle": "Password, Email ID, Phone Number"
    },
    {
      "icon": Iconsax.notification,
      "title": "Notification",
      "subtitle": "Check your medicine notification"
    },
    {
      "icon": Iconsax.notification,
      "title": "Notification",
      "subtitle": "Check your medicine notification"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ProfileProvider>(context);

    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(
      //       FontAwesomeIcons.chevronLeft,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
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
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 30, left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF46D0C3),
                          radius: 12.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 11.5,
                            child: Icon(
                              Icons.camera_alt,
                              size: 15.0,
                              color: Color(0xFF46D0C3),
                            ),
                          ),
                        ),
                      ),
                      radius: 38.0,
                      backgroundImage: AssetImage('assets/images/profile.jpeg'),
                    ),
                    Expanded(
                      child: ListTile(
                        titleTextStyle: TextStyle(fontSize: 15),
                        title: Text("Take Care!",
                            style: TextStyle(color: Colors.black)),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Richa Bose',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ProfileSectionTitle(
                  title: 'Settings',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: List.generate(settings.length, (int index) {
                    return ListTile(
                      onTap: () {},
                      minVerticalPadding: 15,
                      titleTextStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                      subtitleTextStyle: TextStyle(
                          // fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black),
                      leading: Icon(
                        settings[index]['icon'],
                        size: 30,
                      ),
                      title: Text(settings[index]['title']),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(settings[index]['subtitle']),
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ProfileSectionTitle(
                    title: 'Device',
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                // height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      _buildDeviceToggle("Connect", "Bluetooth, Wi- Fi",
                          Iconsax.bluetooth, controller.toggle == 'Connect'),
                      _buildDeviceToggle(
                          "Sound Option",
                          "Ring, Silent, Vibrate",
                          Iconsax.speaker,
                          controller.toggle == 'Sound Option'),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ProfileSectionTitle(
                    title: 'Caretakers: 03',
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                // height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleTile(
                              image: 'assets/images/user.jpg',
                              title: 'Dipa Luna',
                            ),
                            CircleTile(
                              image: 'assets/images/profile.jpeg',
                              title: 'Roz sodiishusgh',
                            ),
                            CircleTile(
                              image: 'assets/images/profile.jpeg',
                              title: 'Dipa Luna',
                            ),
                            CircleTile(
                              image: 'assets/images/plus.jpg',
                              title: 'Add',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ProfileSectionTitle(
                    title: 'Doctor',
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                // height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.add,
                            size: 35,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Add Your Doctor",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 17)),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Or Use ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          children: [
                            TextSpan(
                              text: 'invite link',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 235, 211, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileSectionTitle(
                      title: 'Privacy Policy',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionTitle(
                      title: 'Termas Of Use',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionTitle(
                      title: 'Rate Us',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ProfileSectionTitle(
                      title: 'Share',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: primaryColor),
                            //backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AppMainscreen()));
                        },
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black),
                        ))),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDeviceToggle(
      String title, subtitle, IconData icon, bool isSelected) {
    final controller = Provider.of<ProfileProvider>(context);

    return GestureDetector(
      onTap: () {
        controller.deviceToggle(label: title);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 30),
        decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: isSelected
                ? BorderRadius.circular(25)
                : BorderRadius.circular(0)),
        child: ListTile(
          selected: true,
          minVerticalPadding: 15,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          leading: Icon(icon, size: 30, color: Colors.black),
          title: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.black, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileSectionTitle extends StatelessWidget {
  final String title;
  ProfileSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w600),
    );
  }
}

class CircleTile extends StatelessWidget {
  final String image, title;

  CircleTile({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: primaryColor,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
            width: 60,
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}

// ListTile(
//                     selected: true,
//                     minVerticalPadding: 15,
//                     titleTextStyle:
//                         TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//                     leading: Icon(
//                       Icons.notifications,
//                       size: 40,
//                     ),
//                     title: Text("Connect"),
//                     subtitle: Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 5),
//                       child: Text("Bluetooth, Wi- Fi"),
//                     ),
//                   ),
