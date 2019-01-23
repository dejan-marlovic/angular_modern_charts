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
    changeDetection: ChangeDetectionStrategy.OnPush
)
class BarChartComponent implements OnInit, AfterViewInit, AfterChanges, OnDestroy
{
  BarChart _chart;
  Map<dynamic, dynamic> _optionsData;
  final html.Element _hostElement;

  @Input()
  bool loading = false;

  @Input()
  BarChartOptions chartProperties = new BarChartOptions()..height = '300px';

  @Input()
  BarChartData chartData = new BarChartData([], []);
  
  BarChartComponent(this._hostElement);

  @override
  void ngAfterChanges()
  {
    if (_chart != null) _chart.draw(chartData.encoded, _optionsData);
  }

  @override
  void ngAfterViewInit()
  {
    _chart = new BarChart(_hostElement.querySelector('#chart'));
  }

  @override
  void ngOnDestroy()
  {
    _chart.free();
  }

  @override
  void ngOnInit() {
    _optionsData = chartProperties == null ? null : json.decode(json.encode(chartProperties));
  }
}

