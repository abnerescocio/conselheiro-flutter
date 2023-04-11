import 'package:conselheiro/domain/models/department_member.dart';
import 'package:conselheiro/domain/models/national_department.dart';
import 'package:conselheiro/domain/models/state_department.dart';
import 'package:json_annotation/json_annotation.dart';

part 'regional_department.g.dart';

@JsonSerializable()
class RegionalDepartment {
  final String? id;
  final String? name;
  final String? logoUrl;
  final List<StateDepartment>? stateDerpartments;
  final List<DepartmentMember>? departmentMembers;

  final NationalDepartment nationalDepartment;

  RegionalDepartment(
    this.id,
    this.name,
    this.logoUrl,
    this.stateDerpartments,
    this.departmentMembers,
    this.nationalDepartment,
  );

  factory RegionalDepartment.fromJson(Map<String, dynamic> json) =>
      _$RegionalDepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$RegionalDepartmentToJson(this);
}
