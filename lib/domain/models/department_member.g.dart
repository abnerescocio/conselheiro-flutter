// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentMember _$DepartmentMemberFromJson(Map<String, dynamic> json) =>
    DepartmentMember(
      Counselor.fromJson(json['counselor'] as Map<String, dynamic>),
      $enumDecode(_$DepartmentRolesTypeEnumMap, json['departmentRole']),
      $enumDecode(_$RulesTypeEnumMap, json['rule']),
    );

Map<String, dynamic> _$DepartmentMemberToJson(DepartmentMember instance) =>
    <String, dynamic>{
      'counselor': instance.counselor,
      'departmentRole': _$DepartmentRolesTypeEnumMap[instance.departmentRole]!,
      'rule': _$RulesTypeEnumMap[instance.rule]!,
    };

const _$DepartmentRolesTypeEnumMap = {
  DepartmentRolesType.coordinator: 'coordinator',
  DepartmentRolesType.secondCoordinator: 'secondCoordinator',
  DepartmentRolesType.secretary: 'secretary',
  DepartmentRolesType.secondSecretary: 'secondSecretary',
};

const _$RulesTypeEnumMap = {
  RulesType.admin: 'admin',
  RulesType.write: 'write',
  RulesType.read: 'read',
};
