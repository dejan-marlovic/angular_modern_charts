part of base_properties;

@JsonSerializable(includeIfNull: false)
class BarChartProperties extends BaseProperties {
  SeriesProperty series = SeriesProperty();
  AxisProperty xAxis = AxisProperty()
    ..title.text = 'x axis'
    ..labels.minRotation = -90
    ..labels.maxRotation = 0
    ..position = 'bottom';
  AxisProperty yAxis = AxisProperty()
    ..title.text = 'y axis'
    ..position = 'left';

  BarChartProperties();

  @override
  factory BarChartProperties.fromJson(Map<String, dynamic> json) =>
      _$BarChartPropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$BarChartPropertiesToJson(this);
}
