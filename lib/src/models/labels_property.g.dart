// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labels_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabelsProperty _$LabelsPropertyFromJson(Map<String, dynamic> json) {
  return LabelsProperty()
    ..enabled = json['enabled'] as bool
    ..style = json['style'] == null
        ? null
        : StyleProperty.fromJson(json['style'] as Map<String, dynamic>)
    ..minRotation = json['minRotation'] as int
    ..maxRotation = json['maxRotation'] as int;
}

Map<String, dynamic> _$LabelsPropertyToJson(LabelsProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('style', instance.style);
  writeNotNull('minRotation', instance.minRotation);
  writeNotNull('maxRotation', instance.maxRotation);
  return val;
}
