import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'radarchart',
    styleUrls: const ['radarchart_component.css'],
    templateUrl: 'radarchart_component.html'
)
class RadarChartComponent
    implements AfterViewInit, OnChanges, OnDestroy {
  RadarChartComponent(this._hostElement);

  @override
  void ngAfterViewInit() {
    _chart = new RadarChart(_hostElement.querySelector('#chart'));
  }

  @override
  void ngOnChanges(Map<String, SimpleChange> changes) {
    if (_chart != null)
      _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  @override
  void ngOnDestroy() {
    _chart.free();
  }

  RadarChart _chart;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  RadarChartProperties chartProperties = new RadarChartProperties('300px');

  @Input()
  RadarChartData chartData = new RadarChartData([], []);
}

