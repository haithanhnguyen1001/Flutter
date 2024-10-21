import 'package:flutter/material.dart';

class Product {
  late String name;
  late String unit;
  late double price;
  late Color colorAvt;
  Product(this.name, this.unit, this.price, {this.colorAvt = Colors.amber});
}

//MOCK data
var listProduct = [
  Product("KIWI", "Pc", 40, colorAvt: Colors.green),
  Product("Orange", "Pc", 50, colorAvt: Colors.blueAccent),
  Product("Cherry", "Pc", 70, colorAvt: Colors.blueGrey),
  Product("Banana", "Pc", 60, colorAvt: Colors.red),
  Product("Mango", "Kg", 40, colorAvt: Colors.redAccent),
  Product("Durian", "Kg", 50),
];
