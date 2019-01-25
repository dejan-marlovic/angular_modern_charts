// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StyleProperty _$StylePropertyFromJson(Map<String, dynamic> json) =>
    StyleProperty()
      ..fontFamily = json['fontFamily'] as String
      ..fontSize = json['fontSize'] as int
      ..fontStyleProperty = json['fontStyleProperty'] as String
      ..color = json['color'] as String;

Map<String, dynamic> _$StylePropertyToJson(StyleProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fontFamily', instance.fontFamily);
  writeNotNull('fontSize', instance.fontSize);
  writeNotNull('fontStyleProperty', instance.fontStyleProperty);
  writeNotNull('color', instance.color);
  return val;
}
