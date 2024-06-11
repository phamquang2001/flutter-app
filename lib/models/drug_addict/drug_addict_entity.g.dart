// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_addict_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrugAddictEntity _$DrugAddictEntityFromJson(Map<String, dynamic> json) =>
    DrugAddictEntity(
      status: json['status'] as String,
      createdBy: CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      modifiedBy:
          ModifiedBy.fromJson(json['modifiedBy'] as Map<String, dynamic>),
      modifiedAt: json['modifiedAt'] as String,
      id: (json['id'] as num).toInt(),
      identifyNumber: json['identifyNumber'] as String,
      fullName: json['fullName'] as String,
      gender: (json['gender'] as num).toInt(),
      dateOfBirth: json['dateOfBirth'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      permanentCity:
          CityEntity.fromJson(json['permanentCity'] as Map<String, dynamic>),
      permanentDistrict: DistrictEntity.fromJson(
          json['permanentDistrict'] as Map<String, dynamic>),
      permanentWard:
          WardEntity.fromJson(json['permanentWard'] as Map<String, dynamic>),
      permanentAddressDetail: json['permanentAddressDetail'] as String,
      fullPermanent: json['fullPermanent'] as String,
      currentCity:
          CityEntity.fromJson(json['currentCity'] as Map<String, dynamic>),
      currentDistrict: DistrictEntity.fromJson(
          json['currentDistrict'] as Map<String, dynamic>),
      currentWard:
          WardEntity.fromJson(json['currentWard'] as Map<String, dynamic>),
      currentAddressDetail: json['currentAddressDetail'] as String,
      fullCurrent: json['fullCurrent'] as String,
      isAtPermanent: json['isAtPermanent'] as bool,
      police: json['police'] == null
          ? null
          : ShortPoliceEntity.fromJson(json['police'] as Map<String, dynamic>),
      treatmentPlace: json['treatmentPlace'] == null
          ? null
          : ShortTreatmentPlaceEntity.fromJson(
              json['treatmentPlace'] as Map<String, dynamic>),
      assignAt: json['assignAt'] as String?,
    );

Map<String, dynamic> _$DrugAddictEntityToJson(DrugAddictEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'modifiedBy': instance.modifiedBy,
      'modifiedAt': instance.modifiedAt,
      'id': instance.id,
      'identifyNumber': instance.identifyNumber,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'permanentCity': instance.permanentCity,
      'permanentDistrict': instance.permanentDistrict,
      'permanentWard': instance.permanentWard,
      'permanentAddressDetail': instance.permanentAddressDetail,
      'fullPermanent': instance.fullPermanent,
      'currentCity': instance.currentCity,
      'currentDistrict': instance.currentDistrict,
      'currentWard': instance.currentWard,
      'currentAddressDetail': instance.currentAddressDetail,
      'fullCurrent': instance.fullCurrent,
      'isAtPermanent': instance.isAtPermanent,
      'police': instance.police,
      'treatmentPlace': instance.treatmentPlace,
      'assignAt': instance.assignAt,
    };
