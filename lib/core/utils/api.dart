import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio) {
    dio.options.baseUrl = _baseUrl;
  }

  Future<Map<String, dynamic>> get(String path) async {
    try {
      Response response = await dio.get(path);
      return response.data;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  
}
