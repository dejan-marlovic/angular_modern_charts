import 'dart:convert';
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html',
    directives: const [NgIf],
    changeDetection: ChangeDetectionStrategy.OnPush)
class BarChartComponent
    implements OnInit, AfterViewInit, AfterChanges, OnDestroy {
  BarChart _chart;
  Map<dynamic, dynamic> optionsData;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  BarChartProperties chartProperties = new BarChartProperties();

  @Input()
  BarChartData chartData = new BarChartData([], []);

  BarChartComponent(this._hostElement);

  @override
  void ngAfterChanges() {
    _chart?.draw(chartData.encoded, optionsData);
  }

  @override
  void ngAfterViewInit() {
    _chart = new BarChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }

  @override
  void ngOnDestroy() {
    _chart.free();
  }

  @override
  void ngOnInit() {
    optionsData = chartProperties == null
        ? null
        : json.decode(json.encode(chartProperties));
  }
}
