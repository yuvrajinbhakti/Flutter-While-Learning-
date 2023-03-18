import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "yuvraj";
  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(20,(index) => CatalogModel.items[0]);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount:dummyList.length,
            itemBuilder: (context, index) {
          return ItemWidget(
            // item: CatalogModel.items[index],
            item:dummyList[index],
          );
        }),
      ),
      drawer: MyDrawer(),
    );
  }
}
