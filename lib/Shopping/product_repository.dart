// product_repository.dart
import 'package:geetha/Shopping/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// Make sure this path is correct for your project structure

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
