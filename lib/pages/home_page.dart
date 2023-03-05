import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
          child: Text("Wow amazing . Keep on working hard. "),
        )
    )
    );
  }
}
