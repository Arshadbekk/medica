import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/doctors/appointment.dart';
import 'package:medica/doctors/doctors.dart';
import 'package:medica/image_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../main.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Map<String,dynamic> docs={
    "images":[
      imagePicture.doc1,
      imagePicture.doc2,
      imagePicture.doc3,
    ],
    "name":[
      "Dr.Pawan",
      "Dr.Wanitha",
      "Dr.Udara"
    ],
    "desc":[
      "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
      "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
      "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
    ]
  };
  List categories = [
    "Dentist",
    "Therapist",
    "Ortho",
    "Surgien",
    "Eye specialist"
  ];
  List banner = [
    "https://i.pinimg.com/originals/b9/27/1b/b9271b8356c0e07fac2126e25dfe4343.jpg",
    "https://thumbs.dreamstime.com/b/doctor-office-banner-background-healthcare-hospital-background-concept-87323968.jpg",
    "https://st4.depositphotos.com/9999814/23959/i/450/depositphotos_239599066-stock-photo-woman-doctor-working-hospital-office.jpg"
  ];
  var initialindex = 0;
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorTheme.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: width * 0.1,
                    backgroundImage: AssetImage(imagePicture.profile),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi,Welcome Back,",
                          style: TextStyle(
                            color: colorTheme.grey,
                            fontSize: width * 0.04,
                          ),
                        ),
                        Text(
                          currentUserName.toString(),
                          style: TextStyle(
                              color: colorTheme.black,
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.06),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  Stack(children: [
                    Container(
                      height: width * 0.08,
                      width: width * 0.06,
                      child: SvgPicture.asset(imagePicture.notifi),
                    ),
                    Positioned(
                      bottom: width * 0.05,
                      left: width * 0.03,
                      child: CircleAvatar(
                        radius: width * 0.015,
                        backgroundColor: Colors.red,
                      ),
                    )
                  ])
                ],
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Container(
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
              SizedBox(
                height: width * 0.07,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: width * 0.44,
                  autoPlayAnimationDuration: Duration(milliseconds: 200),
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    initialindex = index;
                    setState(() {});
                  },
                ),
                itemCount: banner.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: width * 0.4,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.04),
                        color: colorTheme.primaryColor,
                        image: DecorationImage(
                            image: NetworkImage(banner[index]),
                            fit: BoxFit.fill)),
                  );
                },
              ),
              SizedBox(
                height: width * 0.04,
              ),
              AnimatedSmoothIndicator(
                activeIndex: initialindex,
                count: banner.length,
                duration: Duration(milliseconds: 200),
                effect: ExpandingDotsEffect(
                    spacing: width * 0.03,
                    dotHeight: width * 0.03,
                    dotWidth: width * 0.03,
                    dotColor: colorTheme.dot,
                    activeDotColor: colorTheme.primaryColor),
              ),
              SizedBox(
                height: width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: colorTheme.grey),
                  )
                ],
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Container(
                height: width * 0.2,
                width: width * 1,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: width * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          color: colorTheme.secondaryColor),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              color: colorTheme.white,
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.05),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width * 0.03,
                    );
                  },
                  itemCount: categories.length,
                ),
              ),
              SizedBox(
                height: width * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Doctors",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => doctorsPage(),));
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(color: colorTheme.grey),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: width*0.03,
              ),
              Container(
                height: width*0.4,
                width: width*0.9,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => appoinmentPage(),));
                      },
                      child: Container(
                          height: width * 0.4,
                          width: width * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.03),
                              color: colorTheme.doctors
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: width*0.35,
                                  width: width*0.35,
                                  // color: Colors.red,
                                  child: Image(image: AssetImage(docs["images"][index]))),
                              Container(
                                height: width*0.35,
                                width: width*0.45,
                                // color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(docs["name"][index],style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: width*0.05,
                                        ),),
                                        InkWell(
                                            onTap: () {
                                              click=!click;
                                              setState(() {

                                              });
                                            },
                                            child: click==true?Icon(Icons.favorite,color: colorTheme.primaryColor,):Icon(Icons.favorite_border,color: colorTheme.primaryColor,))
                                      ],
                                    ),
                                    Text("Jorem ipsum dolor, consectetur\n adipiscing elit. Nunc v libero et\n velit interdum, ac  mattis.",style: TextStyle(
                                        fontSize: width*0.03,
                                        color: colorTheme.grey
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: width*0.07,
                                          width: width*0.2,
                                          child: Center(
                                            child: Text("Book",style: TextStyle(
                                                color: colorTheme.white
                                            ),),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(width*0.035),
                                              color: colorTheme.primaryColor
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: colorTheme.orange,),
                                            Text("5.0")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                    );

                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width*0.03,
                    );
                  },
                  itemCount: docs["images"].length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
