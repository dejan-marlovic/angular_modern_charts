part of base_data;

class BarChartData extends BaseData {
  final List<BarChartColumnData> _columns;
  final List<String> _categories;

  BarChartData(this._categories, this._columns)
      : super(DataTable(<List<dynamic>>[
          ['Categories']..addAll(_categories)
        ]..addAll(_columns.map((c) => c.encoded)))) {
    for (final column in _columns) {
      if (column._data.length != _categories.length)
        throw StateError(
            'Each column has to contain the same number of values as there are categories.');
    }
  }

  List<String> get categories => _categories.sublist(1);
  List<BarChartColumnData> get columns => _columns;
}

class BarChartColumnData {
  final String _name;
  final List<double> _data;
  final List<dynamic> _encoded;

  BarChartColumnData(this._name, this._data)
      : _encoded = [_name]..addAll(_data);

  List<double> get data => _data;
  List<dynamic> get encoded => _encoded;
  String get name => _name;
}
