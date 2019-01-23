import 'package:modern_charts/modern_charts.dart';

class BarChartColumnData {
  final String _name;
  List<num> _data;
  List<dynamic> _encoded;

  BarChartColumnData(this._name, List<num> data) {
    if (_name == null) {
      throw new ArgumentError.notNull('name');
    }
    this.data = data;
  }

  List<num> get data => _data;

  set data(List<num> value) {
    if (value == null) {
      throw new ArgumentError.notNull('data');
    }
    _data = value;
    _encoded = []
      ..add(_name)
      ..addAll(value);
  }

  List<dynamic> get encoded => _encoded;
}

class BarChartData {
  List<BarChartColumnData> _columns;
  final List<String> _categories;
  DataTable _encoded;

  BarChartData(this._categories, List<BarChartColumnData> columns) {
    if (_categories == null) {
      throw new ArgumentError.notNull('categories');
    }
    if (columns == null) {
      throw new ArgumentError.notNull('columns');
    }
    _categories.insert(0, 'Categories');
    this.columns = columns;
  }
  List<BarChartColumnData> get columns => _columns;

  set columns(List<BarChartColumnData> value) {
    if (value == null) {
      throw new ArgumentError.notNull('columns');
    }
    _columns = value;

    for (final column in _columns) {
      if (column._data.length != _categories.length - 1)
        throw new StateError(
            'Each column has to contain the same number of values as there are categories.');
    }
    _encoded = DataTable([]
      ..add(_categories)
      ..addAll(_columns.map((c) => c.encoded)));
  }

  List<String> get categories => _categories.sublist(1);

  DataTable get encoded => _encoded;
}
