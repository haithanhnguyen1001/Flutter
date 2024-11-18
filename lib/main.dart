import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_gmail.dart';
import 'package:flutter_application_1/my_googlemeet.dart';
import 'package:flutter_application_1/my_productlist.dart';
import 'package:flutter_application_1/my_shop.dart';
import 'package:flutter_application_1/my_shoppingcart.dart';
import 'package:flutter_application_1/my_homepage.dart';
import 'package:flutter_application_1/my_place.dart';

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
        '/shoppingcart': (context) => const MyShoppingCart(),
        '/googlemeet': (context) => const MyGooglemeet(),
        '/gmail': (context) => MyGmail(),
        '/shop': (context) => const MyShop()
      },
      debugShowCheckedModeBanner: false,

      // home: const MyProductList()
      initialRoute: '/shop',
    );
  }
}
