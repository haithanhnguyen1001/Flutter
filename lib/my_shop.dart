import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/apiservice.dart';
import 'package:flutter_application_1/entity/myproduct.dart';

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  late Future<List<MyProduct>> lsProduct;
  //Ham khoi tao trang thai cho shop
  @override
  void initState() {
    super.initState();
    lsProduct = APIService.getAllProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<MyProduct>>(
      future: lsProduct,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          if (snapshot.hasData) {
            List<MyProduct> data = snapshot.data!;
            return ListView(
              children: data.map((e) => MyItem(e)).toList(),
            );
          } else
            return const SizedBox();
        }
      },
    ));
  }

  Widget MyItem(MyProduct p) {
    return Text(
      p.title,
      style: const TextStyle(color: Colors.black),
    );
  }
}
