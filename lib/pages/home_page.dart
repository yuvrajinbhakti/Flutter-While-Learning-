import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1_from_basic/core/store.dart';
import 'package:flutter_application_1_from_basic/models/cart.dart';
import 'dart:convert';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/routes.dart';
import '../widgets/themes.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
import 'package:/http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "yuvraj";

  final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  // final url = "https://api.jsonbin.io";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // final response = await http.get(Uri(host: url));
    final response = await http.get(Uri.parse(url));
    // final response = await http.get(Uri(host: url,path:"/b/604dbddb683e7e079c4eefd3"));
    final catalogJson = response.body;
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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        // backgroundColor: MyTheme.creamColor,
        // backgroundColor: context.cardColor,

        // floatingActionButton: FloatingActionButton(
        //   onPressed: ()=>Navigator.pushNamed(context, MyRoutes.cartRoute),
        //   backgroundColor: context.theme.buttonColor,
        //   child:Icon(
        //     CupertinoIcons.cart,
        //     color:Colors.white,
        //   ),
        // ),

        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: (ctx, _, __) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
            // ignore: deprecated_member_use
            backgroundColor: context.theme.buttonColor,
            child: const Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
          ).badge(
              color: Vx.gray200,
              size: 22,
              count: _cart.items.length,
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
