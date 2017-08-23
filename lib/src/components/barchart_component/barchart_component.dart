import 'package:angular2/angular2.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html'
)
class BarChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = height;
    _chart = new BarChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  BarChart _chart;

  @ViewChild('chart')
  ElementRef chartRef;

  @Input('dataTable')
  DataTable dataTable;

  @Input('height')
  String height;


}

