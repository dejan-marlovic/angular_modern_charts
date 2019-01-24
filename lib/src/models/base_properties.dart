library base_properties;

import 'package:json_annotation/json_annotation.dart';

import 'axis_property.dart';
//import 'crosshair_property.dart';
import 'labels_property.dart';
import 'markers_property.dart';
import 'series_property.dart';

part 'base_properties.g.dart';

part '../../models/barchart_properties.dart';
part '../../models/gaugechart_properties.dart';
part '../../models/linechart_properties.dart';
part '../../models/piechart_properties.dart';
part '../../models/radarchart_properties.dart';

abstract class BaseProperties {
  Map<String, dynamic> toJson();

  @JsonKey(ignore: true)
  String height = '600px';
}
