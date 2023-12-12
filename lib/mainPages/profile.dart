import 'package:flutter/material.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/image_constants.dart';
import 'package:medica/mainPages/editprofile.dart';

import '../main.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:  AppBar(
            backgroundColor: colorTheme.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back_ios,color: colorTheme.black,)),
            centerTitle: true,
            title: Text("Profile",style: TextStyle(
                color: colorTheme.primaryColor,
                fontSize: width*0.05,
                fontWeight: FontWeight.w700
            ),),
          ),
      backgroundColor: colorTheme.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: CircleAvatar(
              radius: width*0.15,
              backgroundColor: colorTheme.white,
              backgroundImage: AssetImage(imagePicture.doc4),
            ),
          ),
          Text(currentUserName,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: width*0.05
          ),),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => editProfilePage(),));
            },
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: colorTheme.secondaryColor,
                  child: Icon(Icons.person,color: colorTheme.white,)),
              title: Text("Edit Profile",style: TextStyle(
                  fontSize: width*0.04,
                  fontWeight: FontWeight.w600
              ),),
              trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colorTheme.secondaryColor,
                child: Icon(Icons.history,color: colorTheme.white,)),
            title: Text("History",style: TextStyle(
              fontSize: width*0.04,
              fontWeight: FontWeight.w600
            ),),
            trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
          ),
          // ListTile(
          //   leading: CircleAvatar(
          //     backgroundColor: colorTheme.secondaryColor,
          //       child: Icon(Icons.person,color: colorTheme.white,)),
          //   title: Text("Personal Detailes",style: TextStyle(
          //     fontSize: width*0.04,
          //     fontWeight: FontWeight.w600
          //   ),),
          //   trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
          // ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colorTheme.secondaryColor,
                child: Icon(Icons.location_on,color: colorTheme.white,)),
            title: Text("Location",style: TextStyle(
              fontSize: width*0.04,
              fontWeight: FontWeight.w600
            ),),
            trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colorTheme.secondaryColor,
                child: Icon(Icons.payment,color: colorTheme.white,)),
            title: Text("Payment Method",style: TextStyle(
              fontSize: width*0.04,
              fontWeight: FontWeight.w600
            ),),
            trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colorTheme.secondaryColor,
                child: Icon(Icons.settings,color: colorTheme.white,)),
            title: Text("Settings",style: TextStyle(
              fontSize: width*0.04,
              fontWeight: FontWeight.w600
            ),),
            trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colorTheme.secondaryColor,
                child: Icon(Icons.help,color: colorTheme.white,)),
            title: Text("Help",style: TextStyle(
              fontSize: width*0.04,
              fontWeight: FontWeight.w600
            ),),
            trailing: Icon(Icons.arrow_forward_ios,size: width*0.05,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: colorTheme.secondaryColor,
                child: Icon(Icons.logout,color: colorTheme.white,)),
            title: Text("Logout",style: TextStyle(
              fontSize: width*0.04,
              fontWeight: FontWeight.w600
            ),),
          ),
        ],
      ),
    );
  }
}
