import 'package:modern_charts/modern_charts.dart';

class GaugeChartData
{
  GaugeChartData(this._label, this._columns);

  DataTable get encoded
  {
    List<List <dynamic>> output = new List();
    output.add([_label, "share"]);
    output.addAll(_columns.map((column) => column.encoded));
    return new DataTable(output);
  }

  final List<GaugeChartColumnData> _columns;
  final String _label;
}

class GaugeChartColumnData
{
  GaugeChartColumnData(this._name, this._data);

  List<dynamic> get encoded
  {
    List<dynamic> output = new List();
    output.add(_name);
    output.addAll(_data);
    return output;
  }
  final String _name;
  final List<num> _data;
}