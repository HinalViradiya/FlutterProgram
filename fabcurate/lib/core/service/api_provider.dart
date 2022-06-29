import 'dart:developer';

import 'package:dio/dio.dart';

import 'api_routes.dart';

late Dio _dio;

class APIProvider {
  APIProvider() {
    _dio = Dio();
  }

  Future<Response<dynamic>> getAPICall(String url,
      {Map<String, dynamic>? header}) async {
    String uri = ApiRoutes.baseUrl + url;
    log("Uri ==================> $uri");
    log("header ==================> $header");
    final Response<dynamic> response =
        await _dio.get(uri, options: Options(headers:{
          "Content-Type": "application/json",
        }));
    throwIfNoSuccess(response);
    log("response ==================> $response");
    return response;
  }

  void throwIfNoSuccess(Response<dynamic> response) {
    log("Response statusCode==================> ${response.statusCode}");
    if (response.statusCode! < 200 || response.statusCode! > 299) {
      throw HttpException(response);
    }
  }
}

class HttpException implements Exception {
  HttpException(this.response);

  Response<dynamic> response;
}

String handleDioError(Object? error) {
  if (error is DioError) {
    if (error.response?.statusCode == 401) {
      return 'Unauthorised, Please Enter Valid Credential';
    } else if (error.response?.statusCode == 400) {
      return "Error in Register With statusCode ${error.response?.statusCode}";
    } else {
      return "Error in Register With statusCode ${error.response?.statusCode}";
    }
  }
  return error.toString();
}
