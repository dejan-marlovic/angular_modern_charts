part of base_properties;

@JsonSerializable(includeIfNull: false)
class RadarChartProperties extends BaseProperties {
  SeriesProperty series = SeriesProperty();
  MarkersProperty markers = MarkersProperty();
  AxisProperty xAxis = AxisProperty();
  AxisProperty yAxis = AxisProperty();

  RadarChartProperties();

  factory RadarChartProperties.fromJson(Map<String, dynamic> json) =>
      _$RadarChartPropertiesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RadarChartPropertiesToJson(this);
}
