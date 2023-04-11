import 'package:conselheiro/domain/models/ambassador.dart';
import 'package:conselheiro/domain/models/counselor.dart';
import 'package:conselheiro/domain/models/state_department.dart';
import 'package:json_annotation/json_annotation.dart';

part 'embassy.g.dart';

@JsonSerializable()
class Embassy {
  final String id;
  final String name;
  final String? logoUrl;
  final List<Counselor>? counselors;
  final List<Ambassador>? ambassadors;

  final StateDepartment stateDepartment;

  Embassy(
    this.id,
    this.name,
    this.logoUrl,
    this.counselors,
    this.ambassadors,
    this.stateDepartment,
  );

  factory Embassy.fromJson(Map<String, dynamic> json) =>
      _$EmbassyFromJson(json);

  Map<String, dynamic> toJson() => _$EmbassyToJson(this);
}
