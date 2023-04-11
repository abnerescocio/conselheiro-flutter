import 'package:conselheiro/domain/models/department_member.dart';
import 'package:conselheiro/domain/models/embassy.dart';
import 'package:conselheiro/domain/models/regional_department.dart';
import 'package:json_annotation/json_annotation.dart';

part 'state_department.g.dart';

@JsonSerializable()
class StateDepartment {
  final String? id;
  final String? name;
  final String? logoUrl;
  final List<Embassy>? embassies;
  final List<DepartmentMember>? departmentMembers;

  final RegionalDepartment regionalDepartment;

  StateDepartment(
    this.id,
    this.name,
    this.logoUrl,
    this.embassies,
    this.departmentMembers,
    this.regionalDepartment,
  );

  factory StateDepartment.fromJson(Map<String, dynamic> json) =>
      _$StateDepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$StateDepartmentToJson(this);
}
