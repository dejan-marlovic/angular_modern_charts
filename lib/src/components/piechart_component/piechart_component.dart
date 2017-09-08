import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'piechart',
    styleUrls: const ['piechart_component.css'],
    templateUrl: 'piechart_component.html'
)
class PieChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = chartProperties.height;
    _chart = new PieChart(chartRef.nativeElement);
    _chart.draw(chartData.encoded , chartProperties.encoded);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  PieChart _chart;

  @Input('chartProperties')
  PieChartProperties chartProperties = new PieChartProperties("300px");

  @Input('chartData')
  PieChartData chartData = new PieChartData([], []);

  @ViewChild("chart")
  ElementRef chartRef;

}

