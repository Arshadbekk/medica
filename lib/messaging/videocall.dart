import 'package:flutter/material.dart';
import 'package:medica/color_constant.dart';

import '../main.dart';

class videoCallPage extends StatefulWidget {
  const videoCallPage({super.key});

  @override
  State<videoCallPage> createState() => _videoCallPageState();
}

class _videoCallPageState extends State<videoCallPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
    );
  }
}
