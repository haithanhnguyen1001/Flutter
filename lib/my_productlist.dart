import 'package:flutter/material.dart';
import 'package:flutter_application_1/entity/product.dart';
import 'package:flutter_application_1/entity/shoppingcart.dart';

class MyProductList extends StatefulWidget {
  const MyProductList({super.key});

  @override
  State<MyProductList> createState() => _MyProductListState();
}

class _MyProductListState extends State<MyProductList> {
  // late ShoppingCart spc; // Khai báo biến ShoppingCart

  // @override
  // void initState() {
  //   super.initState();
  //   spc = ShoppingCart(); // Khởi tạo ShoppingCart
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Product List",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/shoppingcart');
                  },
                  icon: const Icon(Icons.shopping_cart),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        "${spc.items.isEmpty ? 0 : spc.items.length}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children: listProduct.map((product) => item(context, product)).toList(),
      ),
    );
  }

  Widget item(BuildContext context, Product p) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: p.colorAvt),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemText("Name", p.name),
            itemText("Unit", p.unit),
            itemText("Price", p.price.toString()),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            setState(() {
              spc.add(p); // Thêm sản phẩm vào giỏ hàng
            });

            var snackBar = const SnackBar(
              content: Text("Bạn đã thêm sản phẩm vào giỏ hàng"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
          ),
          child: const Text("Add to cart"),
        ),
      ),
    );
  }

  Text itemText(String label, String value) {
    return Text.rich(
      TextSpan(text: "$label: ", children: [
        TextSpan(
            text: value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ]),
    );
  }
}

Text itemText(String label, String value) {
  return Text.rich(TextSpan(text: "$label: ", children: [
    TextSpan(text: value, style: const TextStyle(fontWeight: FontWeight.bold))
  ]));
}

// Widget item() {
//   return Card(
//     child: ListTile(
//       leading: Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(color: Colors.amber),
//       ),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [Text("Name: KiWi"), Text("Unit: Pc"), Text("Price: 40\$")],
//       ),
//       trailing: ElevatedButton(
//           onPressed: () => null,
//           style: ElevatedButton.styleFrom(
//               foregroundColor: Colors.white, backgroundColor: Colors.black),
//           child: Text("Add to cart")),
//     ),
//   );
// }
