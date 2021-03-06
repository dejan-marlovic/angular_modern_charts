import 'package:json_annotation/json_annotation.dart';

part 'markers_property.g.dart';

@JsonSerializable(includeIfNull: false)
class MarkersProperty {
  bool enabled = true;
  String fillColor;
  int lineWidth = 1;
  String strokeColor = 'white';
  int size = 4;

  MarkersProperty();

  factory MarkersProperty.fromJson(Map<String, dynamic> json) =>
      _$MarkersPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$MarkersPropertyToJson(this);
}
