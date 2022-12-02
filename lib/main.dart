import 'package:flutter/material.dart';
import 'package:roadside_assistance/views/welcome.dart';
import 'package:roadside_assistance/contants.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:travel_app/Screens/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volunterring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        // textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
      ),
      home: WelcomeScreen(),
    );
  }
}