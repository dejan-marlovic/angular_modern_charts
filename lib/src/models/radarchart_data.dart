part of base_data;

class RadarChartData extends BaseData {
  final List<RadarChartColumnData> _columns;
  final List<String> _categories;

  RadarChartData(this._categories, this._columns)
      : super(new DataTable([
          _categories,
          _columns.map((c) => c.encoded).toList(growable: false)
        ])) {
    if (_categories == null) {
      throw new ArgumentError.notNull('categories');
    }
    if (_columns == null) {
      throw new ArgumentError.notNull('columns');
    }
    for (final column in _columns) {
      if (column._data.length != _categories.length)
        throw new StateError(
            'Each column has to contain the same number of values as there are categories.');
    }
    _categories.insert(0, 'Categories');
  }

  List<String> get categories => _categories.sublist(1);
  List<RadarChartColumnData> get columns => _columns;
}

class RadarChartColumnData {
  final String _name;
  final List<num> _data;
  final List<dynamic> _encoded;

  RadarChartColumnData(this._name, this._data)
      : _encoded = <dynamic>[_name].addAll(_data) {
    if (_name == null) {
      throw new ArgumentError.notNull('name');
    }
    if (_data == null) {
      throw new ArgumentError.notNull('data');
    }
  }

  List<dynamic> get encoded => _encoded;
}
