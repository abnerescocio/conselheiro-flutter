import 'package:json_annotation/json_annotation.dart';
import 'package:conselheiro/domain/models/department_member.dart';
import 'package:conselheiro/domain/models/regional_department.dart';

part 'national_department.g.dart';

@JsonSerializable()
class NationalDepartment {
  final String? id;
  final String? name;
  final String? logoUrl;
  final List<RegionalDepartment>? regionalDepartments;
  final List<DepartmentMember>? departmentMembers;

  NationalDepartment({
    this.id,
    this.name,
    this.logoUrl,
    this.regionalDepartments,
    this.departmentMembers,
  });

  factory NationalDepartment.fromJson(Map<String, dynamic> json) =>
      _$NationalDepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$NationalDepartmentToJson(this);
}
