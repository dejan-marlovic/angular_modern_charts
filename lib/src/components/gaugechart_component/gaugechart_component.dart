import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'gaugechart',
    styleUrls: const ['gaugechart_component.scss.css'],
    templateUrl: 'gaugechart_component.html'
)
class GaugeChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    _chart = new GaugeChart(chartRef.nativeElement);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  GaugeChart _chart;

  @Input('chartProperties')
  GaugeChartProperties chartProperties = new GaugeChartProperties("300px");

  @Input('chartData')
  GaugeChartData chartData;

  @ViewChild("chart")
  ElementRef chartRef;

}

