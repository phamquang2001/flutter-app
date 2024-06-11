import 'package:flutter_application_1/models/common/city_entity.dart';
import 'package:flutter_application_1/models/common/created_by.dart';
import 'package:flutter_application_1/models/common/district_entity.dart';
import 'package:flutter_application_1/models/common/modified_by.dart';
import 'package:flutter_application_1/models/common/short_treatment_place_entity.dart';
import 'package:flutter_application_1/models/common/ward_entity.dart';
import 'package:flutter_application_1/models/police/short_police_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drug_addict_entity.g.dart';

@JsonSerializable()
class DrugAddictEntity {
  String status;
  CreatedBy createdBy;
  String createdAt;
  ModifiedBy modifiedBy;
  String modifiedAt;
  int id;
  String identifyNumber;
  String fullName;
  int gender;
  String dateOfBirth;
  String phoneNumber;
  String email;
  CityEntity permanentCity;
  DistrictEntity permanentDistrict;
  WardEntity permanentWard;
  String permanentAddressDetail;
  String fullPermanent;
  CityEntity currentCity;
  DistrictEntity currentDistrict;
  WardEntity currentWard;
  String currentAddressDetail;
  String fullCurrent;
  bool isAtPermanent;
  ShortPoliceEntity? police;
  ShortTreatmentPlaceEntity? treatmentPlace;
  String? assignAt;

  DrugAddictEntity({
    required this.status,
    required this.createdBy,
    required this.createdAt,
    required this.modifiedBy,
    required this.modifiedAt,
    required this.id,
    required this.identifyNumber,
    required this.fullName,
    required this.gender,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.email,
    required this.permanentCity,
    required this.permanentDistrict,
    required this.permanentWard,
    required this.permanentAddressDetail,
    required this.fullPermanent,
    required this.currentCity,
    required this.currentDistrict,
    required this.currentWard,
    required this.currentAddressDetail,
    required this.fullCurrent,
    required this.isAtPermanent,
    this.police,
    this.treatmentPlace,
    this.assignAt,
  });

  factory DrugAddictEntity.fromJson(Map<String, dynamic> json) => _$DrugAddictEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DrugAddictEntityToJson(this);
}
