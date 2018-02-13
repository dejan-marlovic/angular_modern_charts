import 'package:modern_charts/modern_charts.dart';

class BarChartData
{
  BarChartData(this._categories, this._columns)
  {
    for (BarChartColumnData column in _columns)
    {
      if (column._data.length != _categories.length) throw new StateError('Each column has to contain same number of values as there are categories. Supply null value if data is missing for a category!');
    }
    _categories.insert(0, "Categories");
  }

  DataTable get encoded
  {
    List<List <dynamic>> output = new List();
    output.add(_categories);
    output.addAll(_columns.map((column) => column.encoded));
    return new DataTable(output);
  }

  final List<BarChartColumnData> _columns;
  final List<String> _categories;
}

class BarChartColumnData
{
  BarChartColumnData(this._name, this._data);

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