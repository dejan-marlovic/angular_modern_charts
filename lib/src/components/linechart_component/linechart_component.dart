import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'linechart',
    styleUrls: const ['linechart_component.scss.css'],
    templateUrl: 'linechart_component.html'
)
class LineChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = chartProperties.height;
    _chart = new LineChart(chartRef.nativeElement);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null && chartData != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }

  LineChart _chart;

  @Input('chartProperties')
  LineChartProperties chartProperties = new LineChartProperties("300px");

  @Input('chartData')
  LineChartData chartData = new LineChartData([], []);

  @ViewChild("chart")
  ElementRef chartRef;

}

