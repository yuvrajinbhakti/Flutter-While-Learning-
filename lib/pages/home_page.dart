import 'package:flutter/material.dart';

import '../utils/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
final int days = 30;
    final String name = "yuvraj";
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      appBar: AppBar( 
        title: Text("Meri App "),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation:0.0,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   title:Text("Meri App ",style:TextStyle(color:Colors.black)
      //   ),
      // )
      body: Center(
        child: Container(
          child: Text("Wow amazing . Keep on working hard. "),
        ),
    ),
    drawer: MyDrawer(),
    );
  }
}
