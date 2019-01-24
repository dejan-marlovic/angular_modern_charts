part of base_data;

class LineChartData extends BaseData {
  final List<String> _categories;
  final List<LineChartPointData> _points;

  LineChartData(this._categories, this._points)
      : super(DataTable(<List<dynamic>>[
          ['Categories']..addAll(_categories)
        ]..addAll(_points.map((c) => c.encoded)))) {
    if (_points.length < 2) {
      throw ArgumentError('At least two points are required.');
    }
    for (final column in _points) {
      if (column._data.length != _categories.length)
        throw StateError(
            'Each column has to contain the same number of values as there are categories.');
    }
  }

  List<String> get categories => _categories.sublist(1);
  List<LineChartPointData> get points => _points;
}

class LineChartPointData {
  final String _name;
  final List<double> _data;
  final List<dynamic> _encoded;

  LineChartPointData(this._name, this._data)
      : _encoded = [_name]..addAll(_data);

  List<dynamic> get encoded => _encoded;
}
