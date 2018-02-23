import 'package:modern_charts/modern_charts.dart';

class RadarChartData {
  RadarChartData(this._categories, this._columns) {
    for (var ColumnObject in _columns) {
      if (ColumnObject._data.length != _categories.length)
        throw new StateError(
            'Each column has to contain same number of values as there are categories. Supply null value if data is missing for a category!');
    }
    _categories.insert(0, 'Categories');
  }

  DataTable get encoded {
    final output = []
      ..add(_categories)
      ..addAll(_columns.map((column) => column.encoded));
    return new DataTable(output);
  }

  final List<RadarChartColumnData> _columns;
  final List<String> _categories;
}

class RadarChartColumnData {
  RadarChartColumnData(this._name, this._data);

  List<dynamic> get encoded {
    final output = []
      ..add(_name)
      ..addAll(_data);
    return output;
  }

  final String _name;
  final List<num> _data;
}