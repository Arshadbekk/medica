import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/mainPages/bottomnav.dart';

import '../main.dart';

class paymentSuccess extends StatefulWidget {
  const paymentSuccess({super.key});

  @override
  State<paymentSuccess> createState() => _paymentSuccessState();
}

class _paymentSuccessState extends State<paymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTheme.white,
        elevation: 0,
      ),
      backgroundColor: colorTheme.white,
      body: Container(
        height: height*1,
        width: width*1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/images/paymentsuccess.json"),
            Text("Congratulations",style: TextStyle(
              color: colorTheme.primaryColor,
              fontSize: width*0.09,
              fontWeight: FontWeight.w800
            ),),
            SizedBox(
              height: width*0.03,
            ),
            Text("Your Payment is Successfully",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: width*0.04
            ),),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavPage(),));
              },
              child: Container(
                height: width*0.5,
                width: width*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: width*0.15,
                      width: width*0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorTheme.primaryColor
                      ),
                      child: Center(
                        child: Text("Back",style: TextStyle(
                            color: colorTheme.white,
                            fontSize: width*0.06,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
