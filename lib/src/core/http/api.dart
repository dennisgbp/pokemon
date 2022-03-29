
import 'package:dio/dio.dart';
import 'package:pokemon/injection_container.dart';
import 'package:pokemon/src/core/env/env.dart';
import 'app_interceptors.dart';

class ApiProvider {
  final String _baseApiUrl = sl<Env>().api;
  Dio? dio;

  ApiProvider() {
    dio = Dio(BaseOptions(baseUrl: _baseApiUrl));
    dio?.interceptors.add(AppInterceptors());
  }
}
