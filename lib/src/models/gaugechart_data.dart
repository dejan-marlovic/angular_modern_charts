import 'package:modern_charts/modern_charts.dart';

class GaugeChartData {
  GaugeChartData(this._label, this._columns);

  DataTable get encoded {
    final output = []
      ..add([_label, 'share'])
      ..addAll(_columns.map((column) => column.encoded));
    return new DataTable(output);
  }

  final List<GaugeChartColumnData> _columns;
  final List<String> _label;
}

class GaugeChartColumnData {
  GaugeChartColumnData(this._name, this._data);

  List<dynamic> get encoded {
    final output = []
      ..add(_name)
      ..addAll(_data);
    return output;
  }

  final String _name;
  final List<num> _data;
}