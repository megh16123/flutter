import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 30;
    String name = 'fsf fsdkjfb fsdkfb';
    return Scaffold(
        appBar: AppBar(
          title: Text("first Flutter"),
        ),
        body: Center(
          child: Text("Hello $day ${name.toUpperCase()}  World")),
      drawer: Drawer(),
      );
    
  }
}