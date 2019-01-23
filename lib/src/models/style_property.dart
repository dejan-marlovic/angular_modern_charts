import 'package:json_annotation/json_annotation.dart';
part 'style_property.g.dart';

@JsonSerializable(includeIfNull: false)
class StyleProperty {
  String fontFamily = "'Segoe	UI',	Open Sans,	Verdana,	Arial'";
  num fontSize = 15;
  String fontStyleProperty = 'normal';
  String color = '#212121';

  StyleProperty();
  factory StyleProperty.fromJson(Map<String, dynamic> json) => _$StylePropertyFromJson(json);
  Map<String, dynamic> toJson() => _$StylePropertyToJson(this);
}