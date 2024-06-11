// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_place_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreatmentPlaceEntity _$TreatmentPlaceEntityFromJson(
        Map<String, dynamic> json) =>
    TreatmentPlaceEntity(
      status: json['status'] as String,
      createdBy: CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      modifiedBy:
          ModifiedBy.fromJson(json['modifiedBy'] as Map<String, dynamic>),
      modifiedAt: json['modifiedAt'] as String,
      city: CityEntity.fromJson(json['city'] as Map<String, dynamic>),
      district:
          DistrictEntity.fromJson(json['district'] as Map<String, dynamic>),
      ward: WardEntity.fromJson(json['ward'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      addressDetail: json['addressDetail'] as String,
      leaderFullName: json['leaderFullName'] as String,
      leaderIdentifyNumber: json['leaderIdentifyNumber'] as String,
      leaderPhoneNumber: json['leaderPhoneNumber'] as String,
      leaderEmail: json['leaderEmail'] as String,
      fullAddress: json['fullAddress'] as String,
    );

Map<String, dynamic> _$TreatmentPlaceEntityToJson(
        TreatmentPlaceEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'modifiedBy': instance.modifiedBy,
      'modifiedAt': instance.modifiedAt,
      'city': instance.city,
      'district': instance.district,
      'ward': instance.ward,
      'id': instance.id,
      'fullName': instance.fullName,
      'addressDetail': instance.addressDetail,
      'leaderFullName': instance.leaderFullName,
      'leaderIdentifyNumber': instance.leaderIdentifyNumber,
      'leaderPhoneNumber': instance.leaderPhoneNumber,
      'leaderEmail': instance.leaderEmail,
      'fullAddress': instance.fullAddress,
    };
