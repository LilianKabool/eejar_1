import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParameters});
  Future<dynamic> post(String path,
      {FormData? formData,
      ResponseType? responseType,
      dynamic body,
      Map<String, dynamic>? queryParameters});
  Future<dynamic> put(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
  Future<dynamic> delete(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
}