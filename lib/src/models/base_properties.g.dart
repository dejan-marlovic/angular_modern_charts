// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_properties;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarChartProperties _$BarChartPropertiesFromJson(Map<String, dynamic> json) {
  return BarChartProperties()
    ..series = json['series'] == null
        ? null
        : SeriesProperty.fromJson(json['series'] as Map<String, dynamic>)
    ..xAxis = json['xAxis'] == null
        ? null
        : AxisProperty.fromJson(json['xAxis'] as Map<String, dynamic>)
    ..yAxis = json['yAxis'] == null
        ? null
        : AxisProperty.fromJson(json['yAxis'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BarChartPropertiesToJson(BarChartProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('series', instance.series);
  writeNotNull('xAxis', instance.xAxis);
  writeNotNull('yAxis', instance.yAxis);
  return val;
}

GaugeChartProperties _$GaugeChartPropertiesFromJson(Map<String, dynamic> json) {
  return GaugeChartProperties()
    ..backgroundColor = json['backgroundColor'] as String
    ..gaugeLabels = json['gaugeLabels'] == null
        ? null
        : LabelsProperty.fromJson(json['gaugeLabels'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GaugeChartPropertiesToJson(
    GaugeChartProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backgroundColor', instance.backgroundColor);
  writeNotNull('gaugeLabels', instance.gaugeLabels);
  return val;
}

LineChartProperties _$LineChartPropertiesFromJson(Map<String, dynamic> json) {
  return LineChartProperties()
    ..series = json['series'] == null
        ? null
        : SeriesProperty.fromJson(json['series'] as Map<String, dynamic>)
    ..xAxis = json['xAxis'] == null
        ? null
        : AxisProperty.fromJson(json['xAxis'] as Map<String, dynamic>)
    ..yAxis = json['yAxis'] == null
        ? null
        : AxisProperty.fromJson(json['yAxis'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LineChartPropertiesToJson(LineChartProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('series', instance.series);
  writeNotNull('xAxis', instance.xAxis);
  writeNotNull('yAxis', instance.yAxis);
  return val;
}

PieChartProperties _$PieChartPropertiesFromJson(Map<String, dynamic> json) {
  return PieChartProperties()
    ..pieHole = json['pieHole'] as num
    ..series = json['series'] == null
        ? null
        : SeriesProperty.fromJson(json['series'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PieChartPropertiesToJson(PieChartProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pieHole', instance.pieHole);
  writeNotNull('series', instance.series);
  return val;
}

RadarChartProperties _$RadarChartPropertiesFromJson(Map<String, dynamic> json) {
  return RadarChartProperties()
    ..series = json['series'] == null
        ? null
        : SeriesProperty.fromJson(json['series'] as Map<String, dynamic>)
    ..markers = json['markers'] == null
        ? null
        : MarkersProperty.fromJson(json['markers'] as Map<String, dynamic>)
    ..xAxis = json['xAxis'] == null
        ? null
        : AxisProperty.fromJson(json['xAxis'] as Map<String, dynamic>)
    ..yAxis = json['yAxis'] == null
        ? null
        : AxisProperty.fromJson(json['yAxis'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RadarChartPropertiesToJson(
    RadarChartProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('series', instance.series);
  writeNotNull('markers', instance.markers);
  writeNotNull('xAxis', instance.xAxis);
  writeNotNull('yAxis', instance.yAxis);
  return val;
}
