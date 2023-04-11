import 'package:conselheiro/domain/models/state_department.dart';
import 'package:json_annotation/json_annotation.dart';

part 'counselor.g.dart';

@JsonSerializable()
class Counselor {
  final String id;
  final String name;
  final DateTime birth;
  final String? imageUrl;
  final String? counselorUniqueId;
  final String? rg;
  final String? cpf;

  final StateDepartment stateDepartment;

  Counselor(
    this.id,
    this.name,
    this.birth,
    this.imageUrl,
    this.counselorUniqueId,
    this.rg,
    this.cpf,
    this.stateDepartment,
  );

  factory Counselor.fromJson(Map<String, dynamic> json) =>
      _$CounselorFromJson(json);

  Map<String, dynamic> toJson() => _$CounselorToJson(this);
}
