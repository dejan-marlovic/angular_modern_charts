
library base_data;

import 'package:modern_charts/modern_charts.dart';

part '../../models/barchart_data.dart';
part '../../models/gaugechart_data.dart';
part '../../models/linechart_data.dart';
part '../../models/piechart_data.dart';
part '../../models/radarchart_data.dart';

abstract class BaseData {
  BaseData(this._encoded);

  DataTable get encoded => _encoded;
  final DataTable _encoded;

}