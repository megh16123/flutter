import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String msg="Login";
  bool changebtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.69),
            child: Image.asset("assets/images/login.png",fit: BoxFit.cover,height: 500,),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(msg,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange
        )),
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
         child: Column(
           children: [
                 TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username"
            ),
            onChanged: ((value){
               msg = value;
               setState(() { });
            }),
          ),
    
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password"
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: ()async{
              setState(() {
                  changebtn = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 45,
              width:changebtn?80:400,
              alignment: Alignment.center,
              
              child: changebtn?Icon(Icons.done): Text("Login",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold )
                ),
                decoration: BoxDecoration(
                  color:changebtn?Colors.green:  Colors.deepPurple,
                 borderRadius: BorderRadius.circular(changebtn?30:7.9)
                )
                ),
          )
          // ElevatedButton(
          //   onPressed:(){
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(minimumSize: Size(100,50)),
          //   )
           ],
         ),
       )
        ],
      ))
    );
  }
}