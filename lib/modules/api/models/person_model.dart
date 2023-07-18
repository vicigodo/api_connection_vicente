// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'person_model.g.dart';

@JsonSerializable()
class PersonModel {
  int? id;
  String? email;
  String? first_name;
  String? avatar;
  String? last_name;
  PersonModel({
    this.id,
    this.email,
    this.first_name,
    this.avatar,
    this.last_name,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}
