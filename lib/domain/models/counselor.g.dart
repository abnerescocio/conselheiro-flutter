// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counselor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Counselor _$CounselorFromJson(Map<String, dynamic> json) => Counselor(
      json['id'] as String,
      json['name'] as String,
      DateTime.parse(json['birth'] as String),
      json['imageUrl'] as String?,
      json['counselorUniqueId'] as String?,
      json['rg'] as String?,
      json['cpf'] as String?,
      StateDepartment.fromJson(json['stateDepartment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CounselorToJson(Counselor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birth': instance.birth.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'counselorUniqueId': instance.counselorUniqueId,
      'rg': instance.rg,
      'cpf': instance.cpf,
      'stateDepartment': instance.stateDepartment,
    };
