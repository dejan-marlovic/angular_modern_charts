import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'linechart',
    styleUrls: const ['linechart_component.css'],
    templateUrl: 'linechart_component.html'
)
class LineChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = chartProperties.height;
    _chart = new LineChart(chartRef.nativeElement);
    _chart.draw(chartData.encoded , chartProperties.encoded);
    print(chartProperties.showLineLabels);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null) _chart.draw(chartData.encoded, chartProperties.encoded);
  }



  LineChart _chart;

  @Input('chartProperties')
  LineChartProperties chartProperties = new LineChartProperties("300px");

  @Input('chartData')
  LineChartData chartData = new LineChartData([], []);

  @ViewChild("chart")
  ElementRef chartRef;

}

