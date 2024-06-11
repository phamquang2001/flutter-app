import 'package:flutter_application_1/models/common/city_entity.dart';
import 'package:flutter_application_1/models/common/created_by.dart';
import 'package:flutter_application_1/models/common/district_entity.dart';
import 'package:flutter_application_1/models/common/modified_by.dart';
import 'package:flutter_application_1/models/common/ward_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'police_entity.g.dart';

@JsonSerializable()
class PoliceEntity {
  String status;
  CreatedBy createdBy;
  String createdAt;
  ModifiedBy modifiedBy;
  String modifiedAt;
  CityEntity? city;
  DistrictEntity? district;
  WardEntity? ward;
  int id;
  String? strAvatar;
  String identifyNumber;
  String fullName;
  int gender;
  String dateOfBirth;
  String phoneNumber;
  String email;
  int level;
  String levelName;
  int role;
  String roleName;
  String workPlace;
  int assignStatus;
  String assignStatusName;

  PoliceEntity({
    required this.status,
    required this.createdBy,
    required this.createdAt,
    required this.modifiedBy,
    required this.modifiedAt,
    this.city,
    this.district,
    this.ward,
    required this.id,
    required this.identifyNumber,
    required this.fullName,
    this.strAvatar,
    required this.gender,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.email,
    required this.level,
    required this.levelName,
    required this.role,
    required this.roleName,
    required this.workPlace,
    required this.assignStatus,
    required this.assignStatusName,
  });

  factory PoliceEntity.fromJson(Map<String, dynamic> json) => _$PoliceEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PoliceEntityToJson(this);
}
