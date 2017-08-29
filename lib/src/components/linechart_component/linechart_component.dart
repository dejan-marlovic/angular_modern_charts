import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'linechart',
    styleUrls: const ['linechart_component.css'],
    templateUrl: 'linechart_component.html'
)
class LineChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = height;
    _chart = new LineChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  LineChart _chart;

  @ViewChild('chart')
  ElementRef chartRef;

  @Input('dataTable')
  DataTable dataTable;

  @Input('height')
  String height;


}

