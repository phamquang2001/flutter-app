import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/constants/keys.dart';
import 'package:flutter_application_1/helpers/app_shared_pref.dart';
import 'package:flutter_application_1/models/common/api_response.dart';
import 'package:flutter_application_1/services/auth.service.dart';
import 'package:flutter_application_1/utils/snackbar_util.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class DioClient {
  final dio = Dio(
    BaseOptions(baseUrl: AppKeys.apiUrl),
  );

  DioClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        EasyLoading.show();

        String? accessToken = await AppSharedPref.getAccessToken();

        options.connectTimeout = const Duration(milliseconds: 5000);
        options.receiveTimeout = const Duration(milliseconds: 5000);

        if (accessToken != null) {
          options.headers["Authorization"] = "Bearer $accessToken";
        }

        debugPrint("${options.method.toUpperCase()} ${options.path}");

        return handler.next(options);
      },
      onResponse: (response, handler) {
        EasyLoading.dismiss();
        return handler.next(response);
      },
      onError: (DioException e, handler) async {
        EasyLoading.dismiss();
        if (e.response?.statusCode == 401) {
          await AuthService.logout();
        } else {
          switch (e.type) {
            case DioExceptionType.cancel:
              SnackbarUtil.showError('Request was cancelled');
              break;
            case DioExceptionType.connectionTimeout:
              SnackbarUtil.showError('Connection timeout');
              break;
            case DioExceptionType.sendTimeout:
              SnackbarUtil.showError('Send timeout');
              break;
            case DioExceptionType.receiveTimeout:
              SnackbarUtil.showError('Receive timeout');
              break;
            case DioExceptionType.badResponse:
              Get.log(e.response?.data.toString() ?? "");

              if (e.response != null) {
                final data = ApiResponse.fromJson(e.response?.data);

                SnackbarUtil.showError(data.message);
              } else {
                SnackbarUtil.showError("Received invalid status code: ${e.response?.statusCode}");
              }
              break;
            case DioExceptionType.badCertificate:
              SnackbarUtil.showError('Bad certificate');
              break;
            case DioExceptionType.connectionError:
              SnackbarUtil.showError('Connection error');
              break;
            case DioExceptionType.unknown:
              SnackbarUtil.showError('Error unknown');
              break;
          }
        }
        return handler.next(e);
      },
    ));
  }
}
