part of base_data;

class GaugeChartData extends BaseData {
  final List<GaugeChartColumnData> _columns;
  final String _label;

  GaugeChartData(this._label, this._columns)
      : super(DataTable([
          [_label, 'share'],
          _columns.map((c) => c.encoded).toList(growable: false)
        ])) {
    if (_label == null) {
      throw new ArgumentError.notNull('label');
    }
    if (_columns == null) {
      throw new ArgumentError.notNull('columns');
    }
  }

  List<GaugeChartColumnData> get columns => _columns;  
  String get label => _label;
}

class GaugeChartColumnData {
  final String _name;
  final List<num> _data;
  final List<dynamic> _encoded;

  GaugeChartColumnData(this._name, this._data)
      : _encoded = [_name]..addAll(_data) {
    if (_name == null) {
      throw new ArgumentError.notNull('name');
    }
    if (_data == null) {
      throw new ArgumentError.notNull('data');
    }
  }

  List<dynamic> get encoded => _encoded;
}
