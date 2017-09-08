import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html'
)
class BarChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = chartProperties.height;
    _chart = new BarChart(chartRef.nativeElement);
    _chart.draw(chartData.encoded , chartProperties.encoded);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  BarChart _chart;

  @Input('chartProperties')
  BarChartProperties chartProperties = new BarChartProperties("300px");

  @Input('chartData')
  BarChartData chartData = new BarChartData([], []);

  @ViewChild("chart")
  ElementRef chartRef;

}

