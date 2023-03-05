import 'package:flutter/material.dart';  
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
children: [Image.asset("Assets/images/login_image.png", height:300, width:400,fit:BoxFit.cover),
SizedBox(
  height:20.0,
),
Text(
  "Welcome",
  style:TextStyle(
    fontSize:24,
    fontWeight: FontWeight.bold,
  ),
),
SizedBox(
  height:20.0,
),

Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Column(
  
    children: [
  
      TextFormField(
  
    decoration: InputDecoration(
  
      hintText: "Enter username",
  
      labelText: "Username",
  
    ),
  
  ),
  
  
  
  TextFormField(
  obscureText: true,
    decoration: InputDecoration(
  
      hintText: "Enter password",
  
      labelText: "Password",
  
    ),
  
  ),
  
  SizedBox(
  height:20.0,
),


ElevatedButton(
  child: Text("Login"),
  style:TextButton.styleFrom(foregroundColor: Colors.green,backgroundColor: Colors.pink ),
  onPressed: () {
print("Jai Shivji Ki");
},
)

    ],


  
  ),
)

],


       ));
  }
}
