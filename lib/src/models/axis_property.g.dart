// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'axis_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AxisProperty _$AxisPropertyFromJson(Map<String, dynamic> json) => AxisProperty()
  ..title = json['title'] == null
      ? null
      : TitleProperty.fromJson(json['title'] as Map<String, dynamic>)
  ..crosshair = json['crosshair'] == null
      ? null
      : CrosshairProperty.fromJson(json['crosshair'] as Map<String, dynamic>)
  ..lineColor = json['lineColor'] as String
  ..lineWidth = json['lineWidth'] as int
  ..gridLineColor = json['gridLineColor'] as String
  ..gridLineWidth = json['gridLineWidth'] as int
  ..labels = json['labels'] == null
      ? null
      : LabelsProperty.fromJson(json['labels'] as Map<String, dynamic>)
  ..position = json['position'] as String
  ..interval = json['interval'] as int
  ..minInterval = json['minInterval'] as int
  ..minValue = json['minValue'] as int
  ..maxValue = json['maxValue'] as int;

Map<String, dynamic> _$AxisPropertyToJson(AxisProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('crosshair', instance.crosshair);
  writeNotNull('lineColor', instance.lineColor);
  writeNotNull('lineWidth', instance.lineWidth);
  writeNotNull('gridLineColor', instance.gridLineColor);
  writeNotNull('gridLineWidth', instance.gridLineWidth);
  writeNotNull('labels', instance.labels);
  writeNotNull('position', instance.position);
  writeNotNull('interval', instance.interval);
  writeNotNull('minInterval', instance.minInterval);
  writeNotNull('minValue', instance.minValue);
  writeNotNull('maxValue', instance.maxValue);
  return val;
}
