part of base_data;

class BarChartData extends BaseData {
  final List<BarChartColumnData> _columns;
  final List<String> _categories;

  BarChartData(this._categories, this._columns)
      : super(new DataTable(<List<dynamic>>[_categories]          
          ..addAll(_columns.map((c) => c.encoded)))) {
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
  List<BarChartColumnData> get columns => _columns;
}

class BarChartColumnData {
  final String _name;
  final List<num> _data;
  final List<dynamic> _encoded;

  BarChartColumnData(this._name, this._data)
      : _encoded = [_name]..addAll(_data) {
    if (_name == null) {
      throw new ArgumentError.notNull('name');
    }
    if (_data == null) {
      throw new ArgumentError.notNull('data');
    }
    print(_data);
  }

  List<num> get data => _data;
  List<dynamic> get encoded => _encoded;
  String get name => _name;
}
