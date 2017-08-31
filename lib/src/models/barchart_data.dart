

class BarChartData
{
  BarChartData(this._categories, this._data)
  {
  }

  final List<String> _categories;
  final List<num> _data;

  Map<String, dynamic> get encoded
  {
    Map<String, dynamic> output = new Map();
    return output;
  }
}