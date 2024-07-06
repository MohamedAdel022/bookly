import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(this._dio) {
    _dio.options.baseUrl = _baseUrl;
  }

  Future<Map<String, dynamic>> get(String path) async {
    try {
      Response response = await _dio.get(path);
      return response.data;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
