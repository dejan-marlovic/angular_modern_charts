import 'package:modern_charts/modern_charts.dart';

class PieChartData
{
  PieChartData(this._categories, this._columns)
  {
    for(PieChartColumnData ColumnObject in _columns)
    {
      if (ColumnObject._data.length + 1 != _categories.length) throw new StateError('Supplay one value for each category or segment!');
    }
  }

  DataTable get encoded
  {
    List<List <dynamic>> output = new List();
    output.add(_categories);
    output.addAll(_columns.map((column) => column.encoded));
    return new DataTable(output);
  }

  final List<PieChartColumnData> _columns;
  final List<String> _categories;
}

class PieChartColumnData
{
  PieChartColumnData(this._name, this._data);

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