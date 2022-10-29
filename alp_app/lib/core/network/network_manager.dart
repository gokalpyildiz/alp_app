import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../model/base_response_model.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    if (_instance != null) return _instance!;
    _instance = NetworkManager._init();
    return _instance!;
  }

  final String _baseUrl = ': https://api.spacexdata.com/v4';
  late final Dio dio;

  NetworkManager._init() {
    dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
      headers: {'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'},
    ));

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          responseBody: false,
          request: true,
        ),
      );
    }
    dio.interceptors.add(InterceptorsWrapper(
      onResponse: (response, handler) {
        final data = response.data;

        if (data is Map<String, dynamic>) {
          final model = BaseResponseModel.fromJson(data);
          if (model.success == false) {
            handler.reject(DioError(
              requestOptions: RequestOptions(path: response.realUri.path),
            ));
            return;
          }
        }
        handler.next(response);
      },
    ));
  }
}
