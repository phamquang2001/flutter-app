import 'dart:convert';

import 'package:flutter_application_1/models/police/police_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  AppSharedPref._();

  static late SharedPreferences _prefs;

  static const String _accessTokenKey = "access_token";
  static const String _refreshTokenKey = "refresh_token";
  static const String _userProfileKey = "user_profile";

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<String?> getAccessToken() async {
    return _prefs.getString(_accessTokenKey);
  }

  static Future<void> setAccessToken(String accessToken) async {
    _prefs.setString(_accessTokenKey, accessToken);
  }

  static Future<String?> getRefreshToken() async {
    return _prefs.getString(_refreshTokenKey);
  }

  static Future<void> setRefreshToken(String refreshToken) async {
    _prefs.setString(_refreshTokenKey, refreshToken);
  }

  static Future<PoliceEntity?> getUserProfile() async {
    final userJson = _prefs.getString(_userProfileKey);
    return userJson == null ? null : PoliceEntity.fromJson(jsonDecode(userJson));
  }

  static Future<void> setUserProfile(PoliceEntity user) async {
    final userJson = jsonEncode(user.toJson());
    _prefs.setString(_userProfileKey, userJson);
  }

  static Future<void> clear() async {
    await _prefs.clear();
  }
}
