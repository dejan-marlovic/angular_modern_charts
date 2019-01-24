part of base_data;

class GaugeChartData extends BaseData {
  final List<GaugeChartColumnData> _columns;

  GaugeChartData(this._columns)
      : super(DataTable([
          ['gauge', 'share'],
        ]..addAll(_columns.map((c) => c.encoded))));

  List<GaugeChartColumnData> get columns => _columns;
}

class GaugeChartColumnData {
  final String _name;
  final double _data;
  final List<dynamic> _encoded;

  GaugeChartColumnData(this._name, this._data) : _encoded = [_name, _data] {
    if (_data > 100) {
      throw ArgumentError('Gauge data cannot exceed 100');
    }
  }

  List<dynamic> get encoded => _encoded;
}
