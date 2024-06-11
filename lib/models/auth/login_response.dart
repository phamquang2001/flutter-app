import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String username;
  final int role;
  final String roleName;
  final int level;
  final String levelName;
  final String accessToken;
  final int accessTokenExpiry;
  final String refreshToken;
  final int refreshTokenExpiry;

  LoginResponse({
    required this.username,
    required this.role,
    required this.level,
    required this.roleName,
    required this.levelName,
    required this.accessToken,
    required this.accessTokenExpiry,
    required this.refreshToken,
    required this.refreshTokenExpiry,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
