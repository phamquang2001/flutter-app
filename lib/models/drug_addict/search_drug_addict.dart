import 'package:json_annotation/json_annotation.dart';

part 'search_drug_addict.g.dart';

@JsonSerializable()
class SearchDrugAddict {
  int? page;
  int? size;
  String? identifyNumber;
  String? fullName;
  int? supervisorStatus;
  int? supervisorLevel;
  String? supervisorIdentifyNumber;
  String? supervisorFullName;
  int? cityId;
  int? districtId;
  int? wardId;
  int? treatmentPlaceId;

  SearchDrugAddict({
    this.page = 1,
    this.size = 100,
    this.identifyNumber = '',
    this.fullName = '',
    this.supervisorStatus,
    this.supervisorLevel = 0,
    this.supervisorIdentifyNumber = '',
    this.supervisorFullName = '',
    this.cityId = 0,
    this.districtId = 0,
    this.wardId = 0,
    this.treatmentPlaceId = 0,
  });

  factory SearchDrugAddict.fromJson(Map<String, dynamic> json) => _$SearchDrugAddictFromJson(json);
  Map<String, dynamic> toJson() => _$SearchDrugAddictToJson(this);
}
