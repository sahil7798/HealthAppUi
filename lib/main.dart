import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_assignment/provider/profile_provider.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/views/add_medicines.dart';
import 'package:ui_assignment/views/app_main_screen.dart';
import 'package:ui_assignment/views/home_screen.dart';
import 'package:ui_assignment/views/login_screen.dart';
import 'package:ui_assignment/views/profile_screen.dart';
import 'package:ui_assignment/views/report_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: MaterialApp(
          title: 'UI Assignment',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            fontFamily: "Gordita",
            //colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
            useMaterial3: true,
          ),
          home: LoginScreen()),
    );
  }
}
