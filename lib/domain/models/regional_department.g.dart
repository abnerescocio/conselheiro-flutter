// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionalDepartment _$RegionalDepartmentFromJson(Map<String, dynamic> json) =>
    RegionalDepartment(
      json['id'] as String?,
      json['name'] as String?,
      json['logoUrl'] as String?,
      (json['stateDerpartments'] as List<dynamic>?)
          ?.map((e) => StateDepartment.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['departmentMembers'] as List<dynamic>?)
          ?.map((e) => DepartmentMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      NationalDepartment.fromJson(
          json['nationalDepartment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegionalDepartmentToJson(RegionalDepartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'stateDerpartments': instance.stateDerpartments,
      'departmentMembers': instance.departmentMembers,
      'nationalDepartment': instance.nationalDepartment,
    };
