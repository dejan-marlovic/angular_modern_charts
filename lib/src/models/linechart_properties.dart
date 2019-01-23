part of base_properties;

@JsonSerializable(includeIfNull: false)
class LineChartProperties extends BaseProperties {
  SeriesProperty series = SeriesProperty();
  AxisProperty xAxis = AxisProperty()
    ..title.text = 'x axis'
    ..labels.minRotation = -90
    ..labels.maxRotation = 0
    ..position = 'bottom';
  AxisProperty yAxis = AxisProperty()
    ..title.text = 'y axis'
    ..position = 'left';

  LineChartProperties();

  factory LineChartProperties.fromJson(Map<String, dynamic> json) =>
      _$LineChartPropertiesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineChartPropertiesToJson(this);
}
