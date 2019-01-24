// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleProperty _$TitlePropertyFromJson(Map<String, dynamic> json) {
  return TitleProperty()
    ..style = json['style'] == null
        ? null
        : StyleProperty.fromJson(json['style'] as Map<String, dynamic>)
    ..text = json['text'] as String;
}

Map<String, dynamic> _$TitlePropertyToJson(TitleProperty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('style', instance.style);
  writeNotNull('text', instance.text);
  return val;
}
