import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'radarchart',
    styleUrls: const ['radarchart_component.css'],
    templateUrl: 'radarchart_component.html'
)
class RadarChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = height;
    _chart = new RadarChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  RadarChart _chart;

  @ViewChild('chart')
  ElementRef chartRef;

  @Input('dataTable')
  DataTable dataTable;

  @Input('height')
  String height;


}

