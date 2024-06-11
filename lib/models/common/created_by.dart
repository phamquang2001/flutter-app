import 'package:json_annotation/json_annotation.dart';

part "created_by.g.dart";

@JsonSerializable()
class CreatedBy {
  final String identifyNumber;
  final String? fullName;

  CreatedBy({
    required this.identifyNumber,
    this.fullName,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) => _$CreatedByFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByToJson(this);
}
