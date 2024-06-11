// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      username: json['username'] as String,
      role: (json['role'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      roleName: json['roleName'] as String,
      levelName: json['levelName'] as String,
      accessToken: json['accessToken'] as String,
      accessTokenExpiry: (json['accessTokenExpiry'] as num).toInt(),
      refreshToken: json['refreshToken'] as String,
      refreshTokenExpiry: (json['refreshTokenExpiry'] as num).toInt(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'role': instance.role,
      'roleName': instance.roleName,
      'level': instance.level,
      'levelName': instance.levelName,
      'accessToken': instance.accessToken,
      'accessTokenExpiry': instance.accessTokenExpiry,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiry': instance.refreshTokenExpiry,
    };
