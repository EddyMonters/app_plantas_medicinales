// ignore_for_file: deprecated_member_use

import 'package:app_plantas_medicinales/Intro/intro.dart';
import 'package:flutter/material.dart';
import 'package:app_plantas_medicinales/home_navbar.dart';
//import 'package:app_plantas_medicinales/theme/app_theme.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //to show status bar
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // to load splash screen for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false;
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const IntroPage(),
      home: seenOnboard == true ? const HomeScreen() : const IntroPage(),
      title: 'Plantas Medicinales',
      //theme: AppTheme.lightTheme
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
        //textTheme: GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
