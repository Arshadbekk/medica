import 'package:flutter/material.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/image_constants.dart';
import 'package:medica/messaging/message.dart';

import '../main.dart';

class chatBox extends StatefulWidget {
  const chatBox({super.key});

  @override
  State<chatBox> createState() => _chatBoxState();
}

class _chatBoxState extends State<chatBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTheme.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Message",style: TextStyle(
          color: colorTheme.primaryColor,
          fontSize: width*0.05,
          fontWeight: FontWeight.w700
        ),),
      ),
      backgroundColor: colorTheme.white,
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: width * 0.15,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    textInputAction: TextInputAction.search,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width * 0.04,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: colorTheme.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.keyboard_voice,
                        color: colorTheme.grey,
                      ),
                      hintText: "Search a Doctor",
                      hintStyle: TextStyle(
                          color: colorTheme.grey, fontSize: width * 0.04),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          borderSide: BorderSide(color: colorTheme.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          borderSide: BorderSide(color: colorTheme.textinput)),
                      // fillColor: colorTheme.textinput
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: width*0.03,
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.03),
                child: Text("Active Now",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width*0.05
                ),),
              ),
              SizedBox(
                height: width*0.03,
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.03),
                child: Container(
                  height: width*0.2,
                  width: width*1,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                          children: [
                            CircleAvatar(
                              radius: width*0.08,
                              backgroundColor: colorTheme.secondaryColor,
                              backgroundImage: AssetImage(imagePicture.doc1),
                            ),
                            Positioned(
                              right: width*0.01,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: width*0.02,
                              ),
                            )
                          ]
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width*0.05,
                      );
                    },
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,

                  ),
                ),
              ),
              SizedBox(
                height: width*0.03,
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.03),
                child: Text("Messages",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.05
                ),),
              ),
              SizedBox(
                height: width*0.04,
              ),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => messagePage(),));
                      },
                      child: Container(
                        height: width*0.25,
                        width: width*0.85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            color: colorTheme.light
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: width*0.1,
                                backgroundColor: colorTheme.secondaryColor,
                                backgroundImage: AssetImage(imagePicture.doc2),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Dr.Upul",style: TextStyle(
                                    fontSize: width*0.05,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text("Worem consectetur adipiscing elit.",style: TextStyle(
                                    color: colorTheme.grey,
                                    fontSize: width*0.03
                                ),)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("12:50"),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: colorTheme.primaryColor,
                                    radius: width*0.03,
                                    child: Text("2",style: TextStyle(
                                        color: colorTheme.white,
                                        fontSize: width*0.04
                                    ),),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: width*0.04,
                  );
                },
                itemCount: 7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
