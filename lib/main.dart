// ignore_for_file: prefer_const_constructors

import 'package:crypto_dashboard/constants.dart';
import 'package:crypto_dashboard/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Crypto Dashboard",
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          caption: TextStyle(
            color: kCaptionColor,
            fontSize: 16.0,
          ),
        ),
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: kPrimaryColor,
        ),
      ),
      home: HomePage(),
    );
  }
}
