import 'package:conselheiro/domain/models/counselor.dart';
import 'package:conselheiro/domain/models/department_roles.dart';
import 'package:conselheiro/domain/models/rules.dart';
import 'package:json_annotation/json_annotation.dart';

part 'department_member.g.dart';

@JsonSerializable()
class DepartmentMember {
  final Counselor counselor;
  final DepartmentRolesType departmentRole;
  final RulesType rule;

  DepartmentMember(
    this.counselor,
    this.departmentRole,
    this.rule,
  );

  factory DepartmentMember.fromJson(Map<String, dynamic> json) =>
      _$DepartmentMemberFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentMemberToJson(this);
}
