import 'package:angular2/angular2.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'piechart',
    styleUrls: const ['piechart_component.css'],
    templateUrl: 'piechart_component.html'
)
class PieChartComponent implements AfterViewInit, OnChanges
{
  void ngAfterViewInit()
  {
    chartRef.nativeElement.style.height = height;
    _chart = new PieChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null)
    {
      _chart.draw(dataTable);
    }
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null)
    {
      _chart.update();
      _chart.draw(dataTable);

    }

  }

  PieChart _chart;

  @ViewChild('chart')
  ElementRef chartRef;

  @Input('dataTable')
  DataTable dataTable;

  @Input('height')
  String height;


}

