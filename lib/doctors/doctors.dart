import 'package:flutter/material.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/doctors/appointment.dart';
import 'package:medica/image_constants.dart';

import '../main.dart';

class doctorsPage extends StatefulWidget {
  const doctorsPage({super.key});

  @override
  State<doctorsPage> createState() => _doctorsPageState();
}

class _doctorsPageState extends State<doctorsPage> {
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
  bool click=false;
  List<int> select=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTheme.white,
        title: Text("All Doctors",style: TextStyle(
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
        padding:  EdgeInsets.only(left: width*0.04,right: width*0.04),
        child: Column(
          children: [
            SizedBox(
              height: width*0.03,
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
              height: width*0.05,
            ),
            Container(
              height: height*0.75,
              width: width*1,
              child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => appoinmentPage(),));
                    },
                    child: Container(
                        height: width * 0.4,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            color: colorTheme.doctors
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: width*0.35,
                                width: width*0.4,
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
                                            // if(select==index){
                                            //   select=null;
                                            // }else{
                                            //   select=index;
                                            // }
                                            if(select!.contains(index)){
                                              select!.remove(index);
                                            }else{
                                              select!.add(index);
                                            }
                                            // select!.add(index);
                                            click=!click;
                                            setState(() {

                                            });
                                          },
                                          child: select!.contains(index)?Icon(Icons.favorite,color: colorTheme.primaryColor,):Icon(Icons.favorite_border,color: colorTheme.primaryColor,))
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
                    height: width*0.03,
                  );
                },
                itemCount: docs["images"].length,
              ),
            )

          ],
        ),
      ),
    );
  }
}
