import 'package:flutter/material.dart';
import 'package:flutter_application_1_from_basic/pages/cart_page.dart';
import 'package:flutter_application_1_from_basic/pages/login_page.dart';
import 'package:flutter_application_1_from_basic/utils/routes.dart';
import 'package:flutter_application_1_from_basic/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';
import 'models/cart.dart';
import 'models/catalog.dart';
import 'pages/home_page.dart';

// void main() {
//   runApp(VxState(store: MyStore(), child: MyApp()));
// }

void main() {
  CatalogModel catalog = CatalogModel();
  CartModel cart = CartModel();
  MyStore myStore = MyStore(catalog, cart);
  runApp(VxState(store: myStore, child: MyApp()));
}


// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: HomePage(),

      //if we want to give property in light mode
      // themeMode: ThemeMode.light,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),

      debugShowCheckedModeBanner: false,

      //it is for dark mode
      // home: HomePage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),

      darkTheme: MyTheme.darkTheme(context),

      // initialRoute: MyRoutes.homeRoute,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => HomePage(),
        // "/home": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // "/login": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
