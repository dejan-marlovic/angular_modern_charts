import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'radarchart',
    styleUrls: const ['radarchart_component.css'],
    templateUrl: 'radarchart_component.html'
)
class RadarChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = chartProperties.height;
    _chart = new RadarChart(chartRef.nativeElement);
    _chart.draw(chartData.encoded , chartProperties.encoded);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }



  RadarChart _chart;

  @Input('chartProperties')
  RadarChartProperties chartProperties = new RadarChartProperties("300px");

  @Input('chartData')
  RadarChartData chartData = new RadarChartData([], []);

  @ViewChild("chart")
  ElementRef chartRef;

}

