import 'package:flutter/material.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/image_constants.dart';

import '../main.dart';

class callingPage extends StatefulWidget {
  const callingPage({super.key});

  @override
  State<callingPage> createState() => _callingPageState();
}

class _callingPageState extends State<callingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      body: Container(
        height: height*1,
        width: width*1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: width*0.4,
              width: width*0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: colorTheme.white)
              ),
              child: Image.asset(imagePicture.doc4,
              height: width*0.15,
              width: width*0.15,
              fit: BoxFit.fill,),
            ),
            SizedBox(
              height:width*0.04,
            ),
        Text("Dr.Upul",style: TextStyle(
          color: colorTheme.black,
          fontSize: width*0.07,
          fontWeight: FontWeight.w700
        ),),
            SizedBox(
              height: width*0.04,
            ),
            Text("Ringing",style: TextStyle(
              color: colorTheme.black
            ),),
            Container(
              height: width*0.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: colorTheme.white,
                  radius: width*0.08,
                  child: Icon(Icons.video_call,color: colorTheme.black,),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: width*0.08,
                    child: Icon(Icons.call_end,color: colorTheme.white,),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: colorTheme.white,
                  radius: width*0.08,
                  child: Icon(Icons.mic,color: colorTheme.black,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
