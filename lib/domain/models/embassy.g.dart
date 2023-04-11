// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embassy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Embassy _$EmbassyFromJson(Map<String, dynamic> json) => Embassy(
      json['id'] as String,
      json['name'] as String,
      json['logoUrl'] as String?,
      (json['counselors'] as List<dynamic>?)
          ?.map((e) => Counselor.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['ambassadors'] as List<dynamic>?)
          ?.map((e) => Ambassador.fromJson(e as Map<String, dynamic>))
          .toList(),
      StateDepartment.fromJson(json['stateDepartment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmbassyToJson(Embassy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'counselors': instance.counselors,
      'ambassadors': instance.ambassadors,
      'stateDepartment': instance.stateDepartment,
    };
