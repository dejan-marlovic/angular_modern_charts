// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markers_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkersProperty _$MarkersPropertyFromJson(Map<String, dynamic> json) {
  return MarkersProperty()
    ..enabled = json['enabled'] as bool
    ..fillColor = json['fillColor'] as String
    ..lineWidth = json['lineWidth'] as num
    ..strokeColor = json['strokeColor'] as String
    ..size = json['size'] as num;
}

Map<String, dynamic> _$MarkersPropertyToJson(MarkersProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('fillColor', instance.fillColor);
  writeNotNull('lineWidth', instance.lineWidth);
  writeNotNull('strokeColor', instance.strokeColor);
  writeNotNull('size', instance.size);
  return val;
}
