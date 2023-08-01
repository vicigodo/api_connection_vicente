// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryV3 _$CountryV3FromJson(Map<String, dynamic> json) => CountryV3(
      name: json['name'] == null
          ? null
          : NameCountry.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryV3ToJson(CountryV3 instance) => <String, dynamic>{
      'name': instance.name,
    };
