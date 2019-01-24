// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crosshair_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrosshairProperty _$CrosshairPropertyFromJson(Map<String, dynamic> json) {
  return CrosshairProperty()
    ..color = json['color'] as String
    ..enabled = json['enabled'] as bool;
}

Map<String, dynamic> _$CrosshairPropertyToJson(CrosshairProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color);
  writeNotNull('enabled', instance.enabled);
  return val;
}
