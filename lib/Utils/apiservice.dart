import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/entity/myproduct.dart';
import 'package:flutter_application_1/entity/product.dart';

class APIService {
  static Future<List<MyProduct>> getAllProduct() async {
    var dio = Dio();
    var url = "https://fakestoreapi.com/products";
    var response = await dio.request(
      url,
      options: Options(
        method: 'GET',
      ),
    );
    if (response.statusCode == 200) {
      List<dynamic> result = response.data;
      var ls = result.map((e) => MyProduct.fromJson(e)).toList();
      return ls;
    } else {
      print(response.statusMessage);
      throw Exception("Lỗi lấy dữ liệu");
    }
  }
}
