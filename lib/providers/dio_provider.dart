import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final dioServiceProvider = Provider<DioService>((ref) {
  return DioService();
});

class DioService {
  final dio = Dio();

  Future<Map<String, dynamic>> get(String url) async {
    try {
      final response = await dio.get(url,
          options: Options(contentType: Headers.formUrlEncodedContentType));
      if (response.data != null) {
        return response.data!;
      } else {
        throw Exception();
      }
    } on DioError catch (e) {
      if (e.response != null) {
      } else {
      }
      throw Exception();
    }
  }
}
