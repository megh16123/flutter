import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';

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
        brightness: Brightness.dark,
      ),
     routes: {
       "/":(context) => HomePage(),
     },
    );
  }
}