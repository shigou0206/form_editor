import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService({String baseUrl = 'http://127.0.0.1:8000'})
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ));

  Future<Map<String, dynamic>> mapPreview({
    required Map<String, dynamic> input,
    required List<Map<String, dynamic>> mappings,
  }) async {
    try {
      final response = await _dio.post(
        '/map-preview',
        data: {'input': input, 'mappings': mappings},
      );

      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      // 错误处理更详细
      throw Exception('API请求失败: ${e.message}');
    }
  }
}
