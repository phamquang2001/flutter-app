import 'package:flutter_application_1/models/common/city_entity.dart';
import 'package:flutter_application_1/models/common/created_by.dart';
import 'package:flutter_application_1/models/common/district_entity.dart';
import 'package:flutter_application_1/models/common/modified_by.dart';
import 'package:flutter_application_1/models/common/ward_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'treatment_place_entity.g.dart';

@JsonSerializable()
class TreatmentPlaceEntity {
  String status;
  CreatedBy createdBy;
  String createdAt;
  ModifiedBy modifiedBy;
  String modifiedAt;
  CityEntity city;
  DistrictEntity district;
  WardEntity ward;
  int id;
  String fullName;
  String addressDetail;
  String leaderFullName;
  String leaderIdentifyNumber;
  String leaderPhoneNumber;
  String leaderEmail;
  String fullAddress;

  TreatmentPlaceEntity({
    required this.status,
    required this.createdBy,
    required this.createdAt,
    required this.modifiedBy,
    required this.modifiedAt,
    required this.city,
    required this.district,
    required this.ward,
    required this.id,
    required this.fullName,
    required this.addressDetail,
    required this.leaderFullName,
    required this.leaderIdentifyNumber,
    required this.leaderPhoneNumber,
    required this.leaderEmail,
    required this.fullAddress,
  });

  factory TreatmentPlaceEntity.fromJson(Map<String, dynamic> json) => _$TreatmentPlaceEntityFromJson(json);
  Map<String, dynamic> toJson() => _$TreatmentPlaceEntityToJson(this);
}
