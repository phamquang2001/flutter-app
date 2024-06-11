import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/constants/keys.dart';
import 'package:flutter_application_1/helpers/app_shared_pref.dart';

class DioClient {
  final dio = Dio(
    BaseOptions(baseUrl: AppKeys.apiUrl),
  );

  DioClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? accessToken = await AppSharedPref.getAccessToken();

        // options.connectTimeout = const Duration(milliseconds: 3000);
        // options.receiveTimeout = const Duration(milliseconds: 3000);

        if (accessToken != null) {
          options.headers["Authorization"] = "Bearer $accessToken";
        }

        debugPrint("${options.method.toUpperCase()} ${options.path}");

        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      // onError: (DioException e, handler) async {
      //   if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
      //     bool res = await AuthService.refreshToken();

      //     if (res) {
      //       return handler.resolve(await _retry(e.requestOptions));
      //     }
      //   } else {
      //     String? error = e.message;

      //     SnackbarUtil.showError(error ?? "Server Error");
      //   }

      //   return handler.next(e);
      // },
    ));
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
