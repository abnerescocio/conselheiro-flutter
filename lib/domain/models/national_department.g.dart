// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'national_department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NationalDepartment _$NationalDepartmentFromJson(Map<String, dynamic> json) =>
    NationalDepartment(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logoUrl: json['logoUrl'] as String?,
      regionalDepartments: (json['regionalDepartments'] as List<dynamic>?)
          ?.map((e) => RegionalDepartment.fromJson(e as Map<String, dynamic>))
          .toList(),
      departmentMembers: (json['departmentMembers'] as List<dynamic>?)
          ?.map((e) => DepartmentMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NationalDepartmentToJson(NationalDepartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'regionalDepartments': instance.regionalDepartments,
      'departmentMembers': instance.departmentMembers,
    };
