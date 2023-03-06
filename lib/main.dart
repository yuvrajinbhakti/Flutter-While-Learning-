import 'package:flutter/material.dart';
import 'package:flutter_application_1_from_basic/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: HomePage(),

      //if we want to give property in light mode
       themeMode:ThemeMode.light,
       theme: ThemeData(primarySwatch: Colors.deepPurple),

      //it is for dark mode
      // home: HomePage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),

      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home":(context)=> HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
