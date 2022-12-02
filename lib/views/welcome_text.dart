import 'package:flutter/material.dart';
import 'package:roadside_assistance/views/Sign_In.dart';
// import 'package:roadside_assistance/Screens/home/home.dart';
import 'package:roadside_assistance/main.dart';
// import 'package:travel_app/Screens/welcome/components/welcome_button.dart';
// import 'package:travel_app/constants.dart';
import 'package:roadside_assistance/contants.dart';
import 'package:roadside_assistance/responsive.dart';
import 'package:roadside_assistance/views/welcome_button.dart';

import 'home.dart';
// import 'package:travel_app/responsive.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bahrain Volunterring Application",
          style: TextStyle(
              fontSize: isTab(context) ? 45 : 36,
            // fontSize: 35,
              fontWeight: FontWeight.w700,
              // color: kTextColor
          ),
        ),

        const SizedBox(height: 25),
        Text(
          'Help the community!',
          style: TextStyle(
              fontSize: isTab(context) ? 24 : 16,
              color: kTextColor
          ),
        ),

        const SizedBox(height: 40),

        WelcomeButton(key: UniqueKey(),
            tapEvent: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
            },)


        // WelcomeButton(
        //   tapEvent: () {
        //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        //   },
        // )
      ],
    );
  }
}