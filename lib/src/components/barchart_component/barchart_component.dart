import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html'
)
class BarChartComponent implements AfterViewInit, OnChanges, OnDestroy
{
  BarChartComponent(this._hostElement);

  void ngAfterViewInit()
  {
    _chart = new BarChart(_hostElement.querySelector('#chart'));
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  void ngOnDestroy()
  {
    _chart.free();
  }

  BarChart _chart;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  BarChartProperties chartProperties = new BarChartProperties("300px");

  @Input()
  BarChartData chartData = new BarChartData([], []);
}

