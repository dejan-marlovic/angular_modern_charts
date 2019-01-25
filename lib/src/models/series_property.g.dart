// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesProperty _$SeriesPropertyFromJson(Map<String, dynamic> json) =>
    SeriesProperty()
      ..labels = json['labels'] == null
          ? null
          : LabelsProperty.fromJson(json['labels'] as Map<String, dynamic>)
      ..markers = json['markers'] == null
          ? null
          : MarkersProperty.fromJson(json['markers'] as Map<String, dynamic>)
      ..counterclockwise = json['counterclockwise'] as bool
      ..startAngle = json['startAngle'] as int
      ..curveTension = (json['curveTension'] as num)?.toDouble()
      ..fillOpacity = (json['fillOpacity'] as num)?.toDouble()
      ..lineWidth = json['lineWidth'] as int;

Map<String, dynamic> _$SeriesPropertyToJson(SeriesProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('labels', instance.labels);
  writeNotNull('markers', instance.markers);
  writeNotNull('counterclockwise', instance.counterclockwise);
  writeNotNull('startAngle', instance.startAngle);
  writeNotNull('curveTension', instance.curveTension);
  writeNotNull('fillOpacity', instance.fillOpacity);
  writeNotNull('lineWidth', instance.lineWidth);
  return val;
}
