import 'package:dio/dio.dart';
import 'package:task_preview_tech/app/core/di.dart';
import 'package:task_preview_tech/data/network/pretty_dio_logger.dart';

import '../../app/core/config.dart';

class ApiBaseClient {
  static const String _path = 'users/JakeWharton';
  static final String _baseURL =
      '${ConfigEnvironments.getEnvironments()["url"]}/$_path';
  static final BaseOptions _opts = BaseOptions(
    baseUrl: _baseURL,
    responseType: ResponseType.json,
    connectTimeout: 30000,
    receiveTimeout: 30000,
    sendTimeout: 30000,
    contentType: "application/json",
    headers: {
      "Accept": "application/json",
    },
    followRedirects: false,
  );
  static final _prettyDioLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody:
          ConfigEnvironments.getEnvironments()['env'] == Environments.dev,
      responseHeader: false,
      error: true,
      compact: true);

  static Dio _createDio() {
    return Dio(_opts);
  }

  static Dio _addInterceptors(Dio dio) {
    dio.interceptors.add(_prettyDioLogger);
    return dio;
  }

  static final _dio = _createDio();
  static final client = _addInterceptors(_dio);
}
