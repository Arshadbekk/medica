import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/splashScreen/splashScreen.dart';

import 'firebase_options.dart';

var height;
var width;
var currentUserName;
var currentUserEmail;
var currentUserNumber;
var currentUserId;
var currentUserImage;
var currentUserPassword;
Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashScreen(),
          theme: ThemeData(
            radioTheme: RadioThemeData(
                fillColor: MaterialStatePropertyAll(colorTheme.primaryColor)
            ),
            textTheme: GoogleFonts.openSansTextTheme(),
          ),

      ),
    );
  }
}
