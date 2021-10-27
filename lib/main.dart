import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        fontFamily: GoogleFonts.tangerine().fontFamily,
        brightness: Brightness.dark,
      ),
     routes: {
       "/":(context) => LoginPage(),
     },
    );
  }
}