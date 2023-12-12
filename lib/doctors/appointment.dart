import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/doctors/payment.dart';
import 'package:medica/image_constants.dart';

import '../main.dart';

class appoinmentPage extends StatefulWidget {
  const appoinmentPage({super.key});

  @override
  State<appoinmentPage> createState() => _appoinmentPageState();
}

class _appoinmentPageState extends State<appoinmentPage> {
  int? picktime;
  int? pickday;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTheme.white,
        title: Text("Appointment",style: TextStyle(
          color: colorTheme.primaryColor,
          fontSize: width*0.07,
          fontWeight: FontWeight.w700,
        ),),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: colorTheme.black,)),
        elevation: 0,
      ),
      backgroundColor: colorTheme.white,
      body: Padding(
        padding:  EdgeInsets.only(left:width*0.04,right: width*0.04),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: width*0.4,
                  width: width*0.9,
                  padding: EdgeInsets.only(left:width*0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    border: Border.all(color: colorTheme.black)
                    // color: colorTheme.primaryColor
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: width*0.35,
                      width: width*0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        color: colorTheme.primaryColor,
                      ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: width*0.02),
                        height: width*0.35,
                        width: width*0.48,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Dr.Upul",style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: width*0.05
                                ),),
                                SizedBox(width: width*0.02,),
                                SvgPicture.asset(imagePicture.msg),
                                SvgPicture.asset(imagePicture.call),
                                SvgPicture.asset(imagePicture.vid),
                              ],
                            ),
                            Text("Dentist",style: TextStyle(
                              color: colorTheme.secondaryColor,
                              fontSize: width*0.04,
                              fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: width*0.1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Payment",style: TextStyle(
                                  fontSize: width*0.05,
                                  fontWeight: FontWeight.w600
                                ),),
                                Text("\$120.00",style: TextStyle(
                                  color: colorTheme.secondaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: width*0.04
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: width*0.05,
              ),
              Text("Details",style: TextStyle(
                color: colorTheme.black,
                fontSize: width*0.06,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(
                height: width*0.05,
              ),
              Center(
                child: Container(
                  height: width*0.4,
                  width: width*0.8,
                  child: Text("Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.",style: TextStyle(
                    fontSize: width*0.04,
                    color: colorTheme.grey
                  ),),
                ),
              ),
              SizedBox(
                height: width*0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Working Hours",style: TextStyle(
                  color: colorTheme.black,
                  fontSize: width*0.06,
                  fontWeight: FontWeight.w700
              ),),
                  Text("See All",style: TextStyle(
                    color: colorTheme.black
                  ),)
                ],
              ),
              SizedBox(
                height: width*0.04,
              ),
              Container(
                height: width*0.2,
                width: width*0.9,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount:3 ,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        picktime=index;
                        setState(() {

                        });
                      },
                      child: picktime==index?Container(
                        height: width*0.2,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorTheme.primaryColor,
                        ),
                        child: Center(child: picktime==index?Text("10:00 AM",style: TextStyle(
                          fontSize: width*0.05,
                          color: colorTheme.white
                        ),):Text("10:00 AM",style: TextStyle(
                          fontSize: width*0.05,

                        ),)),
                      ):Container(
                        height: width*0.2,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorTheme.textinput,
                        ),
                        child: Center(child: Text("10:00 AM",style: TextStyle(
                          fontSize: width*0.05,

                        ),)),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width*0.03,
                    );
                  },
                ),
              ),
              SizedBox(
                height: width*0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Date",style: TextStyle(
                      color: colorTheme.black,
                      fontSize: width*0.06,
                      fontWeight: FontWeight.w700
                  ),),
                  Text("See All",style: TextStyle(
                      color: colorTheme.black
                  ),)
                ],
              ),
              SizedBox(
                height: width*0.04,
              ),

              Container(
                height: width*0.2,
                width: width*0.9,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount:3 ,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        pickday=index;
                        setState(() {

                        });
                      },
                      child: pickday==index?Container(
                        height: width*0.2,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorTheme.primaryColor,
                        ),
                        child: Center(child: pickday==index?Text("Sunday",style: TextStyle(
                          fontSize: width*0.05,
                          color: colorTheme.white

                        ),):Text("Sunday",style: TextStyle(
                          fontSize: width*0.05,

                        ),)),
                      ):Container(
                        height: width*0.2,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.03),
                          color: colorTheme.textinput,
                        ),
                        child: Center(child: Text("Sunday",style: TextStyle(
                          fontSize: width*0.05,

                        ),)),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width*0.03,
                    );
                  },
                ),
              ),
              SizedBox(
                height: width*0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => paymentPage(),));
                },
                child: Container(
                  height: width*0.2,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: colorTheme.primaryColor
                  ),
                  child: Center(
                    child: Text("Book an Appointment",style: TextStyle(
                      color: colorTheme.white,
                      fontSize: width*0.06,
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
