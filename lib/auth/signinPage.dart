import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/auth/signUp.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/image_constants.dart';
import 'package:medica/mainPages/bottomnav.dart';

import '../main.dart';

class signinPage extends StatefulWidget {
  const signinPage({super.key});

  @override
  State<signinPage> createState() => _signinPageState();
}

class _signinPageState extends State<signinPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorTheme.white,
        title: Text(
          "Welcome",
          style: GoogleFonts.openSans(
              color: colorTheme.primaryColor,
              fontSize: width * 0.06,
              fontWeight: FontWeight.w700),
        ),
        elevation: 0,
      ),
      backgroundColor: colorTheme.white,
      body: Padding(
        padding: EdgeInsets.only(
            left: width * 0.05, top: width * 0.03, right: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: width * 0.05,
                    color: colorTheme.black,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Text("Korem ipsum dolor sit amet, consectetur\n adipiscing elit.",
                  style: TextStyle(
                    color: colorTheme.grey,
                    fontSize: width * 0.04,
                  )),
              SizedBox(
                height: width * 0.08,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: width * 0.05,
                    color: colorTheme.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Center(
                child: Container(
                  height: width * 0.15,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width * 0.04,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(
                            color: colorTheme.grey, fontSize: width * 0.04),
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: colorTheme.grey, fontSize: width * 0.04),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide:
                                BorderSide(color: colorTheme.textborder)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide:
                                BorderSide(color: colorTheme.textinput)),
                        fillColor: colorTheme.textinput),
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: width * 0.05,
                    color: colorTheme.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Center(
                child: Container(
                  height: width * 0.15,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    color: colorTheme.textinput,
                  ),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    obscureText: pass ? true : false,
                    style: TextStyle(
                      color: colorTheme.grey,
                      fontSize: width * 0.04,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(
                            color: colorTheme.grey, fontSize: width * 0.04),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              pass = !pass;
                              setState(() {});
                            },
                            child: pass == true
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.remove_red_eye)),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: colorTheme.grey, fontSize: width * 0.04),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide:
                                BorderSide(color: colorTheme.textborder)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide:
                                BorderSide(color: colorTheme.textinput)),
                        fillColor: colorTheme.textinput),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password",
                    style: TextStyle(
                        fontSize: width * 0.04,
                        color: colorTheme.black,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: width * 0.15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    if (email.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter your email"),
                      ));
                    } else if (password.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter your password"),
                      ));
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavPage(),));
                    }
                  },
                  child: Container(
                    height: width * 0.15,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.03),
                      color: colorTheme.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: colorTheme.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.04,
              ),
              Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                      color: colorTheme.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.05),
                ),
              ),
              SizedBox(
                height: width * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: width * 0.15,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: colorTheme.secondaryColor),
                    ),
                    child: Center(
                        child: Image.asset(
                      imagePicture.facebooklogo,
                      height: width * 0.1,
                      width: width * 0.1,
                    )),
                  ),
                  Container(
                    height: width * 0.15,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: colorTheme.secondaryColor),
                    ),
                    child: Center(
                        child: Image.asset(
                      imagePicture.googleLogo,
                      height: width * 0.1,
                      width: width * 0.1,
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signUpPage(),
                      ));
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                            color: colorTheme.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.04),
                        children: [
                          TextSpan(
                              text: "Sign up",
                              style: TextStyle(
                                  color: colorTheme.primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.04))
                        ]),
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
