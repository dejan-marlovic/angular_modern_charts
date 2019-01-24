import 'package:json_annotation/json_annotation.dart';

import 'labels_property.dart';
import 'markers_property.dart';

part 'series_property.g.dart';

@JsonSerializable(includeIfNull: false)
class SeriesProperty {
  LabelsProperty labels = LabelsProperty();
  MarkersProperty markers = MarkersProperty();

  bool counterclockwise = false;
  int startAngle = -90;
  double curveTension = 0.4;
  double fillOpacity = 0.25;
  int lineWidth = 2;

  SeriesProperty();

  factory SeriesProperty.fromJson(Map<String, dynamic> json) =>
      _$SeriesPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesPropertyToJson(this);
}
