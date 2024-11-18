import 'dart:convert';
import 'package:flutter_application_1/entity/myproduct.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://fakestoreapi.com/products';

  Future<List<MyProduct>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => MyProduct.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
