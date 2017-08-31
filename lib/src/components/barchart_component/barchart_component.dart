import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html'
)
class BarChartComponent implements AfterViewInit, OnChanges, AfterContentInit
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = chartProperties.height;
    _chart = new BarChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null && chartProperties != null) _chart.draw(dataTable , chartProperties.encoded);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null && chartProperties != null) _chart.draw(dataTable, chartProperties.encoded);
  }

  ngAfterContentInit()
  {
    if (dataTable != null && _chart != null && chartProperties != null)
    {
      _chart.draw(dataTable, chartProperties.encoded);
    }
  }

  BarChart _chart;
  @Input('chartProperties')
  BarChartProperties chartProperties;

  @Input('dataTable')
  DataTable dataTable;

  @ViewChild("chart")
  ElementRef chartRef;

}

