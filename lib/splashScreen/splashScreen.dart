import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/auth/signinPage.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/image_constants.dart';

import '../main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signinPage(),)));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height*1,
        width: width*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: width*0.3,
                width: width*0.3,
                child: Image(image: AssetImage(imagePicture.logo))),
            Text("Medica",style: GoogleFonts.lexend(
              fontSize: width*0.15,
              fontWeight: FontWeight.w600,
              color: colorTheme.primaryColor,
            ),)
          ],
        ),
      ),
    );
  }
}
