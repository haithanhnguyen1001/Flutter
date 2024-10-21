import 'package:flutter/material.dart';
import 'package:flutter_application_1/entity/product.dart';

class ItemInCart {
  late String name;
  late String unit;
  late double price;
  late int quantity;
  ItemInCart({
    required this.name,
    required this.unit,
    required this.price,
    this.quantity = 1,
  });
}

class ShoppingCart {
  late List<ItemInCart> items;

  ShoppingCart() {
    items = [];
  }

  // Thêm 1 sản phẩm vào giỏ hàng
  void add(Product product, {int quantity = 1}) {
    for (var item in items) {
      if (item.name == product.name) {
        // Nếu sản phẩm đã có trong giỏ, cập nhật số lượng
        item.quantity += quantity;
        return;
      }
    }
    // Nếu sản phẩm chưa có, thêm mới vào danh sách
    items.add(ItemInCart(
      name: product.name,
      unit: product.unit,
      price: product.price,
      quantity: quantity,
    ));
  }

  void addItemInCart(ItemInCart itemInCart, {int quantity = 1}) {
    for (var item in items) {
      if (item.name == itemInCart.name) {
        // Nếu sản phẩm đã có trong giỏ, cập nhật số lượng
        item.quantity += quantity;
        if (item.quantity == 0) {
          item.quantity = 1;
        }
        return;
      }
    }
  }

  // Loại bỏ sản phẩm tên là name với số lượng là quantity
  void remove(ItemInCart itemInCart) {
    items.removeWhere((element) => element.name == itemInCart.name);
  }

  void delete(ItemInCart itemInCart) {}

  // Xóa toàn bộ sản phẩm trong giỏ
  void clear() {
    items.clear();
  }

  double getTotal() {
    double total = 0;
    for (var item in items) {
      total += item.price * item.quantity;
    }
    return total;
  }
}

var spc = ShoppingCart();
