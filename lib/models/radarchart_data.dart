part of base_data;

class RadarChartData extends BaseData {
  final List<RadarChartColumnData> _columns;
  final String _label;

  RadarChartData(this._label, this._columns)
      : super(DataTable([
          ['Categories', _label],
        ]..addAll(_columns.map((c) => c.encoded))));

  String get label => _label;
  List<RadarChartColumnData> get columns => _columns;
}

class RadarChartColumnData {
  final String _name;
  final num _data;
  final List<dynamic> _encoded;

  RadarChartColumnData(this._name, this._data) : _encoded = [_name, _data];

  List<dynamic> get encoded => _encoded;
}
