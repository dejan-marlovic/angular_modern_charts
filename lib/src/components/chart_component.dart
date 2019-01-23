library chart_component;

import 'dart:convert';
import 'dart:html' as html;
import 'package:angular/angular.dart';

import 'package:angular_modern_charts/angular_modern_charts.dart';
import 'package:modern_charts/modern_charts.dart';
import '../models/base_data.dart';
import '../models/base_properties.dart';

part 'barchart_component.dart';
part 'gaugechart_component.dart';
part 'linechart_component.dart';
part 'piechart_component.dart';
part 'radarchart_component.dart';

abstract class ChartComponent
    implements OnInit, AfterChanges, AfterViewInit, OnDestroy {
  ChartComponent(this._hostElement);

  @Input()
  bool loading = false;

  @Input()
  BaseData chartData;

  @Input()
  BaseProperties chartProperties;

  Chart _chart;

  Map<dynamic, dynamic> optionsData;
  final html.Element _hostElement;

  @override
  void ngAfterChanges() {
    _chart?.draw(chartData.encoded, optionsData);
  }

  @override
  void ngOnDestroy() {
    _chart.dispose();
  }

  @override
  void ngOnInit() {
    optionsData = chartProperties == null
        ? null
        : json.decode(json.encode(chartProperties));
  }
}
