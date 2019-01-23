part of base_properties;

@JsonSerializable(includeIfNull: false)
class GaugeChartProperties extends BaseProperties {
  String backgroundColor;
  LabelsProperty gaugeLabels = LabelsProperty();

  GaugeChartProperties() {
    gaugeLabels
      ..enabled = true
      ..style;
  }

  factory GaugeChartProperties.fromJson(Map<String, dynamic> json) =>
      _$GaugeChartPropertiesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GaugeChartPropertiesToJson(this);
}
