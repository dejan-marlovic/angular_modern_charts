import 'package:json_annotation/json_annotation.dart';
part 'barchart_properties.g.dart';

@JsonSerializable(includeIfNull: false)
class Style {
  String fontFamily = "'Segoe	UI',	Open Sans,	Verdana,	Arial'";
  num fontSize = 15;
  String fontStyle = 'normal';
  String color = '#212121';

  Style();
  factory Style.fromJson(Map<String, dynamic> json) => _$StyleFromJson(json);
  Map<String, dynamic> toJson() => _$StyleToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Labels {
  bool enabled = true;
  Style style = Style();
  num minRotation;
  num maxRotation;

  Labels();

  factory Labels.fromJson(Map<String, dynamic> json) => _$LabelsFromJson(json);

  Map<String, dynamic> toJson() => _$LabelsToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Series {
  Labels labels = Labels();

  Series();

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);  

  Map<String, dynamic> toJson() => _$SeriesToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Crosshair {
  String color = 'rgba(0,0,0,0.2)';
  bool enabled = true;

  Crosshair();

  factory Crosshair.fromJson(Map<String, dynamic> json) =>
      _$CrosshairFromJson(json);

  Map<String, dynamic> toJson() => _$CrosshairToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Title {
  Style style = Style();
  String text = 'title';

  Title();

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Axis {
  Title title = Title();
  Crosshair crosshair = Crosshair();
  String lineColor = '#c0c0c0';
  num lineWidth = 1;
  String gridLineColor = '#c0c0c0';
  num gridLineWidth = 1;
  Labels labels = new Labels();
  String position;
  num interval;
  num minInterval;
  num minValue;
  num maxValue;

  Axis();

  factory Axis.fromJson(Map<String, dynamic> json) => _$AxisFromJson(json);

  Map<String, dynamic> toJson() => _$AxisToJson(this);
}

@JsonSerializable(includeIfNull: false)
class BarChartProperties {
  Series series = Series();
  Axis xAxis = Axis();
  Axis yAxis = Axis();

  @JsonKey(ignore: true)
  String height = '300px';

  BarChartProperties() {
    xAxis.title.text = 'x axis';
    xAxis.labels
      ..minRotation = -90
      ..maxRotation = 0;
    xAxis.position = 'bottom';
    yAxis.title.text = 'y axis';
    yAxis.position = 'left';
  }

  factory BarChartProperties.fromJson(Map<String, dynamic> json) =>
      _$BarChartPropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$BarChartPropertiesToJson(this);
}