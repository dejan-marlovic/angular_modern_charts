library chart_component;

import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';
import 'package:modern_charts/modern_charts.dart';

import '../models/base_data.dart';
import '../models/base_properties.dart';

part '../../components/barchart_component.dart';
part '../../components/gaugechart_component.dart';
part '../../components/linechart_component.dart';
part '../../components/piechart_component.dart';
part '../../components/radarchart_component.dart';

abstract class ChartComponent implements OnInit, AfterViewInit, AfterChanges, OnDestroy {
  @Input()
  BaseData chartData;

  @Input()
  BaseProperties chartProperties;

  Chart _chart;

  Map<dynamic, dynamic> optionsData;

  final html.Element _hostElement;
  StreamSubscription<html.Event> _resizeListener;

  ChartComponent(this._hostElement) {
    _resizeListener = html.window.onResize.listen((_) {
      if (chartData != null && _chart != null) {
        _chart.resize(true);
      }
    });
  }

  @override
  void ngAfterChanges() {
    if (_chart != null && chartData != null)
      _chart?.draw(chartData.encoded, optionsData);
  }

  @override
  void ngOnDestroy() {
    Future.delayed(Duration(milliseconds: 3000)).then((_) {
      _chart.dispose();
    });

    _resizeListener?.cancel();
  }

  @override
  void ngOnInit() {
    optionsData = chartProperties == null
        ? null
        : json.decode(json.encode(chartProperties));
  }
}
