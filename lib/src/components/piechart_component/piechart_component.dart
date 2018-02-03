import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'piechart',
    styleUrls: const ['piechart_component.scss.css'],
    templateUrl: 'piechart_component.html'
)
class PieChartComponent implements AfterViewInit, OnChanges, OnDestroy
{
  void ngAfterViewInit()
  {
    _chart = new PieChart(chartRef.nativeElement);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (_chart != null && chartData != null) _chart.draw(chartData.encoded);
  }

  void ngOnDestroy()
  {
    _chart.free();
  }

  PieChart _chart;

  @Input('chartProperties')
  PieChartProperties chartProperties = new PieChartProperties("300px");

  @Input('chartData')
  PieChartData chartData;

  @ViewChild("chart")
  ElementRef chartRef;

}

