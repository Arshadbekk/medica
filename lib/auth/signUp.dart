import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/auth/signinPage.dart';
import 'package:medica/auth/usermodel.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/firebase_constants.dart';
import 'package:medica/image_constants.dart';
import 'package:medica/mainPages/bottomnav.dart';

import '../main.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  bool pass=false;
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  TextEditingController numberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorTheme.white,
        title: Text("Create New Account",style: GoogleFonts.openSans(
            color: colorTheme.primaryColor,
            fontSize: width*0.06,
            fontWeight: FontWeight.w700
        ),),
        elevation: 0,
      ),
      backgroundColor: colorTheme.white,
      body: Padding(
        padding:  EdgeInsets.only(left: width*0.04,right: width*0.04,top: width*0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Full Name",style: TextStyle(
                  fontSize: width*0.05,
                  color: colorTheme.black,
                  fontWeight: FontWeight.w800
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Center(
                child: Container(

                  height: width*0.15,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Your Full Name",
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
              ),
              SizedBox(
                height: width*0.03,
              ),
              Text("Password",style: TextStyle(
                  fontSize: width*0.05,
                  color: colorTheme.black,
                  fontWeight: FontWeight.w800
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Center(
                child: Container(

                  height: width*0.15,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    controller: passController,
                    keyboardType: TextInputType.text,
                    obscureText: pass?true:false,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(
                            color: colorTheme.grey,
                            fontSize: width*0.04
                        ),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              pass=!pass;
                              setState(() {

                              });
                            },
                            child: pass==true?Icon(Icons.visibility_off):Icon(Icons.remove_red_eye)),
                        labelText: "Password",
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
              ),
              SizedBox(
                height: width*0.03,
              ),
              Text("Email",style: TextStyle(
                  fontSize: width*0.05,
                  color: colorTheme.black,
                  fontWeight: FontWeight.w800
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Center(
                child: Container(

                  height: width*0.15,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Your Email",
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
              ),
              SizedBox(
                height: width*0.03,
              ),
              Text("Mobile Number",style: TextStyle(
                  fontSize: width*0.05,
                  color: colorTheme.black,
                  fontWeight: FontWeight.w800
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Center(
                child: Container(

                  height: width*0.15,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    controller: numberController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width*0.04,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Your Phone Number",
                        hintStyle: TextStyle(
                            color: colorTheme.grey,
                            fontSize: width*0.04
                        ),
                        labelText: "Phone Number",
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
              ),
              SizedBox(
                height: width*0.1,
              ),
              InkWell(
                onTap: () async {

                  if(nameController.text.isNotEmpty&&emailController.text.isNotEmpty&&passController.text.isNotEmpty&&numberController.text.isNotEmpty){
                    Map<String,dynamic> data=userModel(
                        name: nameController.text,
                        email: emailController.text,
                        password: passController.text,
                        number: numberController.text,
                        id: "",
                        createdTime: DateTime.now()
                    ).toJson();

                    QuerySnapshot emailData= await FirebaseFirestore.instance.collection(fireBaseconst.users).where("email",isEqualTo: emailController.text.trim()).get();
                    QuerySnapshot numberData= await FirebaseFirestore.instance.collection(fireBaseconst.users).where("number",isEqualTo: numberController.text.trim()).get();


                    if(emailData.docs.isNotEmpty){

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("The Email Is Already Exist")));
                      return;
                    }else if(numberData.docs.isNotEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("The Number Is Already Exist")));
                      return;
                    }else{
                      currentUserName=nameController.text;
                      currentUserEmail=emailController.text;
                      currentUserNumber=numberController.text;
                      FirebaseFirestore.instance.collection("users").add(data).then((value) => value.update({
                        "id":value.id
                      })).then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => bottomNavPage(),), (route) => false));
                      return;
                    }
                  }else{
                    nameController.text.isEmpty?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your name"))):
                     passController.text.isEmpty?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your Password"))):
                     emailController.text.isEmpty?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your Email"))):
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your Number")));
                  }
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavPage(),));



                },
                child: Center(
                  child: Container(
                    height: width*0.15,
                    width: width*0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: colorTheme.primaryColor,
                    ),
                    child: Center(
                      child: Text("Sign Up",style: TextStyle(
                          color: colorTheme.white,
                          fontSize: width*0.05,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: width*0.04,
              ),
              Center(
                child: Text("OR",style: TextStyle(
                    color: colorTheme.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: width*0.05
                ),),
              ),
              SizedBox(
                height: width*0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: width*0.15,
                    width: width*0.15,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: colorTheme.secondaryColor),
                    ),
                    child: Center(
                        child: Image.asset(imagePicture.facebooklogo,
                          height: width*0.1,
                          width: width*0.1,
                        )),
                  ),
                  Container(
                    height: width*0.15,
                    width: width*0.15,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: colorTheme.secondaryColor),
                    ),
                    child: Center(
                        child: Image.asset(imagePicture.googleLogo,
                          height: width*0.1,
                          width: width*0.1,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: width*0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => signinPage(),));
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                            color: colorTheme.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: width*0.04
                        ),
                        children: [
                          TextSpan(
                              text: "Sign In",
                              style: TextStyle(
                                  color: colorTheme.primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width*0.04
                              )
                          )
                        ]
                    ),

                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
