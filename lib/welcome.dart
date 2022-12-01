import 'package:flutter/material.dart';
import 'package:roadside_assistance/top_banner.dart';
import 'package:roadside_assistance/welcome_text.dart';
// import 'package:travel_app/Screens/welcome/components/top_banner.dart';
// import 'package:travel_app/Screens/welcome/components/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(key: UniqueKey(),),

            WelcomeText()
          ],
        ),
      ),
    );
  }
}