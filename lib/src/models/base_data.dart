
library base_data;

import 'package:modern_charts/modern_charts.dart';

part 'barchart_data.dart';
part 'gaugechart_data.dart';
part 'linechart_data.dart';
part 'piechart_data.dart';
part 'radarchart_data.dart';

abstract class BaseData {
  BaseData(this._encoded);

  DataTable get encoded => _encoded;
  final DataTable _encoded;

}