import 'package:flutter_application_1/helpers/app_shared_pref.dart';
import 'package:flutter_application_1/helpers/dio_client.dart';
import 'package:flutter_application_1/models/auth/login_request.dart';
import 'package:flutter_application_1/models/auth/login_response.dart';
import 'package:flutter_application_1/models/police/police_entity.dart';

class AuthService {
  AuthService._();

  static final dio = DioClient().dio;

  static Future<void> login(String username, String password) async {
    final response = await dio.post(
      "/auth/login",
      data: LoginRequest(username: username, password: password).toJson(),
    );

    final data = LoginResponse.fromJson(response.data['data']);

    await AppSharedPref.setAccessToken(data.accessToken);
    await AppSharedPref.setRefreshToken(data.refreshToken);

    final account = await getAccount();

    await AppSharedPref.setUserProfile(account);
  }

  static Future<PoliceEntity> getAccount() async {
    final response = await dio.get("/auth/get-logged-account");

    return PoliceEntity.fromJson(response.data['data']);
  }

  static Future<void> forgetPassword(String policeId) async {
    await dio.get("/auth/forget-password?policeId=$policeId");
  }
}
