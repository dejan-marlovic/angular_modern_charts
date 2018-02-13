import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'linechart',
    styleUrls: const ['linechart_component.css'],
    templateUrl: 'linechart_component.html'
)
class LineChartComponent implements AfterViewInit, OnChanges, OnDestroy
{
  LineChartComponent(this._hostElement);

  void ngAfterViewInit()
  {
    _chart = new LineChart(_hostElement.querySelector('#chart'));
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null && chartData != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  void ngOnDestroy()
  {
    _chart.free();
  }

  LineChart _chart;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  LineChartProperties chartProperties = new LineChartProperties("300px");

  @Input()
  LineChartData chartData = new LineChartData([], []);
}

