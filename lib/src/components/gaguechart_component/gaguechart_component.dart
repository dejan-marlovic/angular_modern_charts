import 'package:angular/angular.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'gaugechart',
    styleUrls: const ['gaugechart_component.css'],
    templateUrl: 'gaugechart_component.html'
)
class GaugeChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = height;
    _chart = new GaugeChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null) _chart.draw(dataTable);
  }

  GaugeChart _chart;

  @ViewChild('chart')
  ElementRef chartRef;

  @Input('dataTable')
  DataTable dataTable;

  @Input('height')
  String height;


}

