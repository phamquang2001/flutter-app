import 'package:json_annotation/json_annotation.dart';

part 'search_police.g.dart';

@JsonSerializable()
class SearchPolice {
  int? page;
  int? size;
  String? identifyNumber;
  String? fullName;
  int? role;
  int? level;
  int? cityId;
  int? districtId;
  int? wardId;
  int? assignStatus;

  SearchPolice({
    this.page = 1,
    this.size = 100,
    this.identifyNumber = "",
    this.fullName = "",
    this.role = 0,
    this.level = 0,
    this.cityId = 0,
    this.districtId = 0,
    this.wardId = 0,
    this.assignStatus = 0,
  });

  factory SearchPolice.fromJson(Map<String, dynamic> json) => _$SearchPoliceFromJson(json);
  Map<String, dynamic> toJson() => _$SearchPoliceToJson(this);
}
