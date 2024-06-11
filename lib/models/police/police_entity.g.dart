// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'police_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoliceEntity _$PoliceEntityFromJson(Map<String, dynamic> json) => PoliceEntity(
      status: json['status'] as String,
      createdBy: CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      modifiedBy:
          ModifiedBy.fromJson(json['modifiedBy'] as Map<String, dynamic>),
      modifiedAt: json['modifiedAt'] as String,
      city: json['city'] == null
          ? null
          : CityEntity.fromJson(json['city'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : DistrictEntity.fromJson(json['district'] as Map<String, dynamic>),
      ward: json['ward'] == null
          ? null
          : WardEntity.fromJson(json['ward'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      identifyNumber: json['identifyNumber'] as String,
      fullName: json['fullName'] as String,
      strAvatar: json['strAvatar'] as String?,
      gender: (json['gender'] as num).toInt(),
      dateOfBirth: json['dateOfBirth'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      level: (json['level'] as num).toInt(),
      levelName: json['levelName'] as String,
      role: (json['role'] as num).toInt(),
      roleName: json['roleName'] as String,
      workPlace: json['workPlace'] as String,
      assignStatus: (json['assignStatus'] as num).toInt(),
      assignStatusName: json['assignStatusName'] as String,
    );

Map<String, dynamic> _$PoliceEntityToJson(PoliceEntity instance) =>
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
      'strAvatar': instance.strAvatar,
      'identifyNumber': instance.identifyNumber,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'level': instance.level,
      'levelName': instance.levelName,
      'role': instance.role,
      'roleName': instance.roleName,
      'workPlace': instance.workPlace,
      'assignStatus': instance.assignStatus,
      'assignStatusName': instance.assignStatusName,
    };
