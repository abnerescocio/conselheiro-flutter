// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateDepartment _$StateDepartmentFromJson(Map<String, dynamic> json) =>
    StateDepartment(
      json['id'] as String?,
      json['name'] as String?,
      json['logoUrl'] as String?,
      (json['embassies'] as List<dynamic>?)
          ?.map((e) => Embassy.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['departmentMembers'] as List<dynamic>?)
          ?.map((e) => DepartmentMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      RegionalDepartment.fromJson(
          json['regionalDepartment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StateDepartmentToJson(StateDepartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'embassies': instance.embassies,
      'departmentMembers': instance.departmentMembers,
      'regionalDepartment': instance.regionalDepartment,
    };
