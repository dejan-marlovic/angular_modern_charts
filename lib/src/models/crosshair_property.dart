import 'package:json_annotation/json_annotation.dart';

part 'crosshair_property.g.dart';

@JsonSerializable(includeIfNull: false)
class CrosshairProperty {
  String color = 'rgba(0,0,0,0.2)';
  bool enabled = true;

  CrosshairProperty();

  factory CrosshairProperty.fromJson(Map<String, dynamic> json) =>
      _$CrosshairPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$CrosshairPropertyToJson(this);
}
