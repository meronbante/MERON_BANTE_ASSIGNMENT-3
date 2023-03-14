import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:state_management/models/Item_list.dart';
class ApiServiceProvider {
  


  Future<Item_list?> fetchActivity() async {
      final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        return Item_list.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load');
      }
  }

}