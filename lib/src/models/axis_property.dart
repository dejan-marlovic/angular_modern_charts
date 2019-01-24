import 'package:json_annotation/json_annotation.dart';

import 'crosshair_property.dart';
import 'labels_property.dart';
import 'title_property.dart';

part 'axis_property.g.dart';

@JsonSerializable(includeIfNull: false)
class AxisProperty {
  TitleProperty title = TitleProperty();
  CrosshairProperty crosshair = CrosshairProperty();
  String lineColor = '#c0c0c0';
  int lineWidth = 1;
  String gridLineColor = '#c0c0c0';
  int gridLineWidth = 1;
  LabelsProperty labels = LabelsProperty();
  String position;
  int interval;
  int minInterval;
  int minValue;
  int maxValue;

  AxisProperty();

  factory AxisProperty.fromJson(Map<String, dynamic> json) =>
      _$AxisPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$AxisPropertyToJson(this);
}
