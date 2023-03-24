// import 'package:/flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/themes.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:"Cart".text.make(),
      ),
    );
  }
}