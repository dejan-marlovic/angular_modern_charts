part of base_properties;

@JsonSerializable(includeIfNull: false)
class PieChartProperties extends BaseProperties {
  double pieHole = 0;

  SeriesProperty series = SeriesProperty()
    ..counterclockwise = false
    ..startAngle = -90;

  PieChartProperties();

  factory PieChartProperties.fromJson(Map<String, dynamic> json) =>
      _$PieChartPropertiesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PieChartPropertiesToJson(this);
}
