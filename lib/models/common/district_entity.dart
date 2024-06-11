import 'package:json_annotation/json_annotation.dart';

part "district_entity.g.dart";

@JsonSerializable()
class DistrictEntity {
  String status;
  int id;
  String code;
  String fullName;

  DistrictEntity({
    required this.status,
    required this.id,
    required this.code,
    required this.fullName,
  });

  factory DistrictEntity.fromJson(Map<String, dynamic> json) => _$DistrictEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictEntityToJson(this);
}
