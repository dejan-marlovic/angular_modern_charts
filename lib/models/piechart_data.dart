part of base_data;

class PieChartData extends BaseData {
  final List<PieChartColumnData> _columns;
  final String _label;

  PieChartData(this._label, this._columns)
      : super(new DataTable([
          [_label, 'share'],
          _columns.map((c) => c.encoded).toList(growable: false)
        ])) {
    if (_label == null) {
      throw new ArgumentError('label');
    }
    if (_columns == null) {
      throw new ArgumentError.notNull('columns');
    }
  }

  List<PieChartColumnData> get columns => _columns;
  String get label => _label;
}

class PieChartColumnData {
  final String _name;
  final List<num> _data;
  final List<dynamic> _encoded;

  PieChartColumnData(this._name, this._data)
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
