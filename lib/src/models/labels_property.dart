import 'package:json_annotation/json_annotation.dart';
import 'style_property.dart';

part 'labels_property.g.dart';


@JsonSerializable(includeIfNull: false)
class LabelsProperty {
  bool enabled = true;
  StyleProperty style = StyleProperty();
  num minRotation;
  num maxRotation;

  LabelsProperty();
  factory LabelsProperty.fromJson(Map<String, dynamic> json) => _$LabelsPropertyFromJson(json);
  Map<String, dynamic> toJson() => _$LabelsPropertyToJson(this);
}