import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'gaugechart',
    styleUrls: const ['gaugechart_component.css'],
    templateUrl: 'gaugechart_component.html',
    directives: const [NgIf],
    changeDetection: ChangeDetectionStrategy.OnPush
)
class GaugeChartComponent implements AfterViewInit, OnChanges, OnDestroy
{
  GaugeChartComponent(this._hostElement);

  @override
  void ngAfterViewInit()
  {
    _chart = new GaugeChart(_hostElement.querySelector('#chart'));
  }

  @override
  void ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  @override
  void ngOnDestroy()
  {
    _chart.free();
  }

  GaugeChart _chart;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  GaugeChartProperties chartProperties = new GaugeChartProperties('300px');

  @Input()
  GaugeChartData chartData;
}

