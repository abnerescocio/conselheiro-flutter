import 'package:conselheiro/domain/models/embassy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ambassador.g.dart';

@JsonSerializable()
class Ambassador {
  final String id;
  final String name;
  final DateTime birth;
  final String? imageUrl;
  final String? ambassadorUniqueId;
  final String? rg;
  final String? cpf;

  final Embassy embassy;

  Ambassador(
    this.id,
    this.name,
    this.birth,
    this.imageUrl,
    this.ambassadorUniqueId,
    this.rg,
    this.cpf,
    this.embassy,
  );

  factory Ambassador.fromJson(Map<String, dynamic> json) =>
      _$AmbassadorFromJson(json);

  Map<String, dynamic> toJson() => _$AmbassadorToJson(this);
}
