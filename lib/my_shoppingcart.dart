import 'package:flutter/material.dart';
import 'package:flutter_application_1/entity/shoppingcart.dart';

class MyShoppingCart extends StatefulWidget {
  const MyShoppingCart({super.key});

  @override
  State<MyShoppingCart> createState() => _MyShoppingCartState();
}

class _MyShoppingCartState extends State<MyShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context),
        body: Column(
          children: [
            spc.items.isNotEmpty ? listItemInCart() : myEmptyCart(),
            bottom()
          ],
        ));
  }

  AppBar myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text(
        "My Shopping Cart",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          // Navigator.pop(context); // Quay lại trang trước
          Navigator.pop(context);
        },
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                // Xử lý khi nhấn vào giỏ hàng
              },
            ),
            Positioned(
              right: 2,
              top: 2,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                alignment: Alignment.center,
                child: Text(
                  '${spc.items.isEmpty ? "0" : spc.items.length}', // Số lượng giỏ hàng
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Expanded myEmptyCart() => const Expanded(
          child: Center(
              child: Text(
        "YOUR CART IS EMPTY",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )));

  Widget listItemInCart() {
    return Expanded(
        child: Container(
      child: ListView(
        children: spc.items.map((e) => myItem(e)).toList(),
      ),
    ));
  }

  Widget myItem(ItemInCart itemInCart) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(color: Colors.amber),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${itemInCart.name}"),
                Text("Unit: ${itemInCart.unit}"),
                Text("Price: ${itemInCart.price}")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            spc.addItemInCart(itemInCart, quantity: -1);
                          });
                        },
                        icon: const Icon(Icons.remove)),
                    Text("${itemInCart.quantity}"),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            spc.addItemInCart(itemInCart);
                          });
                        },
                        icon: const Icon(Icons.add)),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        spc.remove(itemInCart);
                      });
                    },
                    icon: const Icon(Icons.delete))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bottom() {
    return SizedBox(
      height: 100,
      // decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text("Sub-Total"), Text("\$${spc.getTotal()}")],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Center(
                child: Text(
                  "Proceed to Pay",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
