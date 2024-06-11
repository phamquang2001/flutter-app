import 'package:json_annotation/json_annotation.dart';

part "ward_entity.g.dart";

@JsonSerializable()
class WardEntity {
  String status;
  int id;
  String code;
  String fullName;

  WardEntity({
    required this.status,
    required this.id,
    required this.code,
    required this.fullName,
  });

  factory WardEntity.fromJson(Map<String, dynamic> json) => _$WardEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WardEntityToJson(this);
}
