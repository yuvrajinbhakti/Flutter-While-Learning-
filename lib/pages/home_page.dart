import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "yuvraj";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    // List<Item> list = List.from(productsData)
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
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
        // child:(CatalogModel.items != null && CatalogModel.items.length.isNotEmpty) ?  ListView.builder(
          child: (CatalogModel.items != null && CatalogModel.items.length > 0) ? ListView.builder(
            itemCount: CatalogModel.items.length,
            // itemCount: dummyList.length,
            itemBuilder: (context, index) =>
               ItemWidget(
                // item: CatalogModel.items[index],
                // item: dummyList[index],
                item: CatalogModel.items[index],
              
               ),
            )
         : Center(
  child:CircularProgressIndicator(),
),
      ),
      drawer: MyDrawer(),
    );
  }
}
