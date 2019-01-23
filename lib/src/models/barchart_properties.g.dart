// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barchart_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Style _$StyleFromJson(Map<String, dynamic> json) {
  return Style()
    ..fontFamily = json['fontFamily'] as String
    ..fontSize = json['fontSize'] as num
    ..fontStyle = json['fontStyle'] as String
    ..color = json['color'] as String;
}

Map<String, dynamic> _$StyleToJson(Style instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fontFamily', instance.fontFamily);
  writeNotNull('fontSize', instance.fontSize);
  writeNotNull('fontStyle', instance.fontStyle);
  writeNotNull('color', instance.color);
  return val;
}

Labels _$LabelsFromJson(Map<String, dynamic> json) {
  return Labels()
    ..enabled = json['enabled'] as bool
    ..style = json['style'] == null
        ? null
        : Style.fromJson(json['style'] as Map<String, dynamic>)
    ..minRotation = json['minRotation'] as num
    ..maxRotation = json['maxRotation'] as num;
}

Map<String, dynamic> _$LabelsToJson(Labels instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('style', instance.style);
  writeNotNull('minRotation', instance.minRotation);
  writeNotNull('maxRotation', instance.maxRotation);
  return val;
}

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return Series()
    ..labels = json['labels'] == null
        ? null
        : Labels.fromJson(json['labels'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SeriesToJson(Series instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('labels', instance.labels);
  return val;
}

Crosshair _$CrosshairFromJson(Map<String, dynamic> json) {
  return Crosshair()
    ..color = json['color'] as String
    ..enabled = json['enabled'] as bool;
}

Map<String, dynamic> _$CrosshairToJson(Crosshair instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color);
  writeNotNull('enabled', instance.enabled);
  return val;
}

Title _$TitleFromJson(Map<String, dynamic> json) {
  return Title()
    ..style = json['style'] == null
        ? null
        : Style.fromJson(json['style'] as Map<String, dynamic>)
    ..text = json['text'] as String;
}

Map<String, dynamic> _$TitleToJson(Title instance) {
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

Axis _$AxisFromJson(Map<String, dynamic> json) {
  return Axis()
    ..title = json['title'] == null
        ? null
        : Title.fromJson(json['title'] as Map<String, dynamic>)
    ..crosshair = json['crosshair'] == null
        ? null
        : Crosshair.fromJson(json['crosshair'] as Map<String, dynamic>)
    ..lineColor = json['lineColor'] as String
    ..lineWidth = json['lineWidth'] as num
    ..gridLineColor = json['gridLineColor'] as String
    ..gridLineWidth = json['gridLineWidth'] as num
    ..labels = json['labels'] == null
        ? null
        : Labels.fromJson(json['labels'] as Map<String, dynamic>)
    ..position = json['position'] as String
    ..interval = json['interval'] as num
    ..minInterval = json['minInterval'] as num;
}

Map<String, dynamic> _$AxisToJson(Axis instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('crosshair', instance.crosshair);
  writeNotNull('lineColor', instance.lineColor);
  writeNotNull('lineWidth', instance.lineWidth);
  writeNotNull('gridLineColor', instance.gridLineColor);
  writeNotNull('gridLineWidth', instance.gridLineWidth);
  writeNotNull('labels', instance.labels);
  writeNotNull('position', instance.position);
  writeNotNull('interval', instance.interval);
  writeNotNull('minInterval', instance.minInterval);
  return val;
}

BarChartOptions _$BarChartOptionsFromJson(Map<String, dynamic> json) {
  return BarChartOptions()
    ..series = json['series'] == null
        ? null
        : Series.fromJson(json['series'] as Map<String, dynamic>)
    ..xAxis = json['xAxis'] == null
        ? null
        : Axis.fromJson(json['xAxis'] as Map<String, dynamic>)
    ..yAxis = json['yAxis'] == null
        ? null
        : Axis.fromJson(json['yAxis'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BarChartOptionsToJson(BarChartOptions instance) {
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
