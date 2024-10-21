import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_productlist.dart';
import 'package:flutter_application_1/my_shoppingcart.dart';
// import 'package:flutter_application_1/my_homepage.dart';
// import 'package:flutter_application_1/my_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/product_list': (context) => const MyProductList(),
        '/shoppingcart': (context) => const MyShoppingCart()
      },
      debugShowCheckedModeBanner: false,

      // home: const MyProductList()
      initialRoute: '/product_list',
    );
  }
}
