part of base_data;

class PieChartData extends BaseData {
  final List<PieChartSliceData> _slices;
  final String _label;

  PieChartData(this._label, this._slices)
      : super(DataTable([
          [_label, 'share'],
        ]..addAll(_slices.map((c) => c.encoded))));

  List<PieChartSliceData> get columns => _slices;
  String get label => _label;
}

class PieChartSliceData {
  final String _name;
  final double _data;
  final List<dynamic> _encoded;

  PieChartSliceData(this._name, this._data) : _encoded = [_name, _data];

  List<dynamic> get encoded => _encoded;
}
