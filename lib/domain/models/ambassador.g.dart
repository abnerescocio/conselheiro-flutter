// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ambassador.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ambassador _$AmbassadorFromJson(Map<String, dynamic> json) => Ambassador(
      json['id'] as String,
      json['name'] as String,
      DateTime.parse(json['birth'] as String),
      json['imageUrl'] as String?,
      json['ambassadorUniqueId'] as String?,
      json['rg'] as String?,
      json['cpf'] as String?,
      Embassy.fromJson(json['embassy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmbassadorToJson(Ambassador instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birth': instance.birth.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'ambassadorUniqueId': instance.ambassadorUniqueId,
      'rg': instance.rg,
      'cpf': instance.cpf,
      'embassy': instance.embassy,
    };
