import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/doctors/paymentsuccess.dart';

import '../main.dart';

class paymentPage extends StatefulWidget {
  const paymentPage({super.key});

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: width*0.1,
          ),
          Padding(
            padding:  EdgeInsets.all(width*0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: colorTheme.white,
                  child: Icon(Icons.arrow_back_ios,color: colorTheme.black,),
                ),
                SizedBox(
                  width: width*0.1,
                ),
                Text("Payment",style: TextStyle(
                  color: colorTheme.white,
                  fontSize: width*0.06,
                  fontWeight: FontWeight.w700
                ),),
                SizedBox(
                  width: width*0.2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: width*0.1,
          ),
          Text("\$120.00",style: TextStyle(
            color: colorTheme.white,
            fontWeight: FontWeight.w700,
            fontSize: width*0.13
          ),),
          SizedBox(
            height: width*0.2,
          ),
          Container(
            height: width*1.2865,
            width: width*1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(width*0.08),topRight: Radius.circular(width*0.08)),
              color: colorTheme.white,
            ),
            child: Padding(
              padding:  EdgeInsets.all(width*0.03),
              child: SingleChildScrollView(
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: width*0.03,
                    ),
                    Center(
                      child: Text("Doctor Chanaling Payment Method",style: TextStyle(
                        fontSize: width*0.04,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                    SizedBox(
                      height: width*0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            click=true;
                            setState(() {

                            });
                          },
                          child:click==true? Container(
                            height: width*0.15,
                            width: width*0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.03),
                              color: colorTheme.primaryColor
                            ),
                            child: Center(child: Text('Card Payment',style: TextStyle(
                              color: colorTheme.white,
                              fontSize: width*0.04,

                            ),)),
                          ):Container(
                            height: width*0.15,
                            width: width*0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.03),
                                color: colorTheme.textinput
                            ),
                            child: Center(child: Text('Card Payment',style: TextStyle(
                              color: colorTheme.black,
                              fontSize: width*0.04,

                            ),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            click=false;
                            setState(() {

                            });
                          },
                          child:click==false? Container(
                            height: width*0.15,
                            width: width*0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.03),
                              color: colorTheme.primaryColor
                            ),
                            child: Center(child: Text('Cash Payment',style: TextStyle(
                              color: colorTheme.white,
                              fontSize: width*0.04,

                            ),)),
                          ):Container(
                            height: width*0.15,
                            width: width*0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.03),
                                color: colorTheme.textinput
                            ),
                            child: Center(child: Text('Cash Payment',style: TextStyle(
                              color: colorTheme.black,
                              fontSize: width*0.04,

                            ),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: width*0.04,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: width*0.03),
                      child: Text("Card Number",style: GoogleFonts.averiaSansLibre(
                        fontSize: width*0.04,
                      ),),
                    ),
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
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: colorTheme.grey,
                            fontSize: width*0.04,
                          ),
                          decoration: InputDecoration(
                              hintText: "Card Number",
                              hintStyle: TextStyle(
                                  color: colorTheme.grey,
                                  fontSize: width*0.04
                              ),
                              // labelText: "Phone Number",
                              // labelStyle: TextStyle(
                              //     color: colorTheme.grey,
                              //     fontSize: width*0.04
                              // ),
                              enabledBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(width*0.03),
                                  borderSide:BorderSide(
                                      color:colorTheme.white
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Expiry Date",style: GoogleFonts.averiaSansLibre(
                              fontSize: width*0.04,
                            ),),
                            SizedBox(
                              height: width*0.03,
                            ),
                            Container(
                              height: width*0.15,
                              width: width*0.45,
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
                                    hintText: "Expiry Date",
                                    hintStyle: TextStyle(
                                        color: colorTheme.grey,
                                        fontSize: width*0.04
                                    ),
                                    // labelText: "Phone Number",
                                    // labelStyle: TextStyle(
                                    //     color: colorTheme.grey,
                                    //     fontSize: width*0.04
                                    // ),
                                    enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(width*0.03),
                                        borderSide:BorderSide(
                                            color:colorTheme.white
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
                        SizedBox(
                          width: width*0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CVV",style: GoogleFonts.averiaSansLibre(
                              fontSize: width*0.04,
                            ),),
                            SizedBox(
                              height: width*0.03,
                            ),
                            Container(
                              height: width*0.15,
                              width: width*0.4,
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
                                    hintText: "CVV",
                                    hintStyle: TextStyle(
                                        color: colorTheme.grey,
                                        fontSize: width*0.04
                                    ),
                                    // labelText: "Phone Number",
                                    // labelStyle: TextStyle(
                                    //     color: colorTheme.grey,
                                    //     fontSize: width*0.04
                                    // ),
                                    enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(width*0.03),
                                        borderSide:BorderSide(
                                            color:colorTheme.white
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
                      ],
                    ),
                    SizedBox(
                      height: width*0.04,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: width*0.03),
                      child: Text("Name",style: GoogleFonts.averiaSansLibre(
                        fontSize: width*0.04,
                      ),),
                    ),
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
                              // labelText: "Phone Number",
                              // labelStyle: TextStyle(
                              //     color: colorTheme.grey,
                              //     fontSize: width*0.04
                              // ),
                              enabledBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(width*0.03),
                                  borderSide:BorderSide(
                                      color:colorTheme.white
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
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => paymentSuccess(),));
                        },
                        child: Container(
                          height: width*0.15,
                          width: width*0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.03),
                              color: colorTheme.primaryColor
                          ),
                          child: Center(
                            child: Text("Pay Now",style: TextStyle(
                                color: colorTheme.white,
                                fontSize: width*0.06,
                                fontWeight: FontWeight.w700
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
