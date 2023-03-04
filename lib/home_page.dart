import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
final int days = 30;
    final String name = "yuvraj";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Wow this is amazing. Number of days are = $days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
