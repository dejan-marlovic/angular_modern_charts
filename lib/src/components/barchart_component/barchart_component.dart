import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html',
    directives: const [NgIf],
    changeDetection: ChangeDetectionStrategy.OnPush
)
class BarChartComponent implements AfterViewInit, AfterChanges, OnDestroy
{
  BarChartComponent(this._hostElement);

  @override
  void ngAfterViewInit()
  {
    _chart = new BarChart(_hostElement.querySelector('#chart'));
  }

  @override
  void ngAfterChanges()
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  @override
  void ngOnDestroy()
  {
    _chart.free();
  }

  BarChart _chart;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  BarChartProperties chartProperties = new BarChartProperties('300px');

  @Input()
  BarChartData chartData = new BarChartData([], []);
}

