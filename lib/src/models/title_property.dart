import 'package:json_annotation/json_annotation.dart';

import 'style_property.dart';

part 'title_property.g.dart';

@JsonSerializable(includeIfNull: false)
class TitleProperty {
  StyleProperty style = StyleProperty();
  String text = 'title';

  TitleProperty();

  factory TitleProperty.fromJson(Map<String, dynamic> json) =>
      _$TitlePropertyFromJson(json);

  Map<String, dynamic> toJson() => _$TitlePropertyToJson(this);
}
