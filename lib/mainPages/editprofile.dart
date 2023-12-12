import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medica/color_constant.dart';

import '../main.dart';

class editProfilePage extends StatefulWidget {
  const editProfilePage({super.key});

  @override
  State<editProfilePage> createState() => _editProfilePageState();
}

class _editProfilePageState extends State<editProfilePage> {

  var file;
  Future<void> pickFile(ImageSource)async{
    final imageFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imageFile!.path);
    if(mounted){
      setState(() {
        file=File(imageFile.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        backgroundColor: colorTheme.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: colorTheme.black,)),
        centerTitle: true,
        title: Text("Edit Profile",style: TextStyle(
            color: colorTheme.primaryColor,
            fontSize: width*0.05,
            fontWeight: FontWeight.w700
        ),),
      ),
      backgroundColor: colorTheme.white,
      body: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                radius: width*0.2,
                backgroundColor: colorTheme.black,
              ),
                Positioned(
                  bottom: width*0.02,
                  right: width*0.02,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(width*0.06),
                              topRight: Radius.circular(width*0.06),
                            )),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: width*0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap:() {
                                    pickFile(ImageSource.camera);
                                  },
                                  child: CircleAvatar(
                                    radius:width*0.1,
                                    backgroundColor: colorTheme.secondaryColor,
                                    child: Icon(Icons.add_a_photo,color: colorTheme.white,),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    pickFile(ImageSource.gallery);
                                  },
                                  child: CircleAvatar(
                                    radius:width*0.1,
                                    backgroundColor: colorTheme.secondaryColor,
                                    child: Icon(Icons.photo_library,color: colorTheme.white,),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );


                    },
                    child: CircleAvatar(
                      child: Icon(Icons.edit),
                    ),
                  ),
                )
              ]
            ),
          ),
          SizedBox(
            height: width*0.04,
          ),
          Container(

            height: width*0.15,
            width: width*0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.03),
              color: colorTheme.textinput,
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: colorTheme.grey,
                fontSize: width*0.04,
              ),
              decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04
                  ),
                  labelText: "Name",
                  labelStyle: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide:BorderSide(
                          color:colorTheme.textborder
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                          color:colorTheme.textinput
                      )
                  ),
                  fillColor: colorTheme.textinput
              ),

            ),
          ),
          SizedBox(
            height: width*0.04,
          ),
          Container(

            height: width*0.15,
            width: width*0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.03),
              color: colorTheme.textinput,
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: colorTheme.grey,
                fontSize: width*0.04,
              ),
              decoration: InputDecoration(
                  hintText: "Number",
                  hintStyle: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04
                  ),
                  labelText: "Number",
                  labelStyle: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide:BorderSide(
                          color:colorTheme.textborder
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                          color:colorTheme.textinput
                      )
                  ),
                  fillColor: colorTheme.textinput
              ),

            ),
          ),
          SizedBox(
            height: width*0.04,
          ),
          Container(

            height: width*0.15,
            width: width*0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.03),
              color: colorTheme.textinput,
            ),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: colorTheme.grey,
                fontSize: width*0.04,
              ),
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide:BorderSide(
                          color:colorTheme.textborder
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                          color:colorTheme.textinput
                      )
                  ),
                  fillColor: colorTheme.textinput
              ),

            ),
          ),
        ],
      ),
    );
  }
}
