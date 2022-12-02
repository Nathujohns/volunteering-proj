import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roadside_assistance/views/create_Event.dart';
import 'package:roadside_assistance/views/events.dart';
import 'package:roadside_assistance/views/profile.dart';
// import 'package:littleswanpreschool/View/exam.dart';
// import 'package:littleswanpreschool/View/home_work.dart';
// import 'package:littleswanpreschool/View/settings.dart';

import 'home.dart';


class BottomBarIndex extends StatefulWidget {
  @override
  _BottomBarIndexState createState() => _BottomBarIndexState();
}

class _BottomBarIndexState extends State<BottomBarIndex> {

  int _selectedItemIndex = 0;//bottom bar
  final tab = [
    Profile(),
    Events(),
    CreateEvent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[_selectedItemIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0.3,
              blurRadius: 1,
              offset: Offset(0, -1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            buildNavBarItem("assets/home.svg", "Home",0),
            buildNavBarItem("assets/stationery.svg", "Home Work",1),
            buildNavBarItem("assets/sticky-note.svg", "Exam",2),
            buildNavBarItem("assets/settings.svg", "Settings", 3),
          ],
        ),
      ),
    );
  }
  Widget buildNavBarItem(
      String icon,
      String title,
      int index,
      ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width / 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
                allowDrawingOutsideViewBox: true,
                height: 25,
                color: index == _selectedItemIndex ? Color(0xff26178a) : Color(0xff5D5F61),
              ),
              SizedBox(
                height: 2,
              ),
              SizedBox(height: 10,),
              Text(
                title,
                style: TextStyle(
                  // fontFamily: FontStrings.Roboto_Regular,
                  color:  index == _selectedItemIndex ? Color(0xff26178a) : Color(0xff5D5F61),
                ),
              ),
              SizedBox(
                height: 2,
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }

}
