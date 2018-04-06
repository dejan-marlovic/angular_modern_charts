import 'package:modern_charts/modern_charts.dart';

class LineChartData {
  LineChartData(this._categories, this._columns) {
    for (final column in _columns) {
      if (column._data.length != _categories.length)
        throw new StateError(
            'Each column has to contain same number of values as there are categories. Supply null value if data is missing for a category!');
    }
    _categories.insert(0, 'Categories');
  }

  DataTable get encoded {
    // ignore: prefer_collection_literals
    final output = new List<List<dynamic>>()
      ..add(_categories)
      ..addAll(_columns.map((column) => column.encoded));
    return new DataTable(output);
  }

  final List<LineChartColumnData> _columns;
  final List<String> _categories;
}

class LineChartColumnData {
  LineChartColumnData(this._name, this._data);

  List<dynamic> get encoded {
    final output = <dynamic>[]
      ..add(_name)
      ..addAll(_data);
    return output;
  }

  final String _name;
  final List<num> _data;
}
