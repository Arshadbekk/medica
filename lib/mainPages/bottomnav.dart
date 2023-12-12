import 'package:flutter/material.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/mainPages/chatbox.dart';
import 'package:medica/mainPages/dateandtime.dart';
import 'package:medica/mainPages/homepage.dart';
import 'package:medica/mainPages/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class bottomNavPage extends StatefulWidget {
  const bottomNavPage({super.key});

  @override
  State<bottomNavPage> createState() => _bottomNavPageState();
}

class _bottomNavPageState extends State<bottomNavPage> {
  var selectindex=0;
  List<Widget> pages=[
    homePage(),chatBox(),profilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
      bottomNavigationBar: SalomonBottomBar(
          onTap: (i) {
            setState(() {
              selectindex=i;
            });
          },
          currentIndex:selectindex ,
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home_outlined),
              title: Text("Home"),
                activeIcon: Icon(Icons.home),
              selectedColor: colorTheme.primaryColor
                ),
            SalomonBottomBarItem(
                icon: Icon(Icons.chat),
              title: Text("Message"),
              selectedColor: colorTheme.primaryColor
                ),
            SalomonBottomBarItem(
                icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: colorTheme.primaryColor,

                ),
          ]
      ),
    );
  }
}
