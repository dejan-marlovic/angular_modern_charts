import 'package:angular2/angular2.dart';
import 'package:modern_charts/modern_charts.dart';

@Component(
    selector: 'barchart',
    styleUrls: const ['barchart_component.css'],
    templateUrl: 'barchart_component.html'
)
class BarChartComponent implements AfterViewInit, OnChanges, AfterContentInit
{
  void ngAfterViewInit()
  {
    print("view");
    print(_barChartDefaultOptions);
    chartRef.nativeElement.style.height = height;
    _chart = new BarChart(chartRef.nativeElement);
    if (dataTable != null && _chart != null) _chart.draw(dataTable , _barChartDefaultOptions);
  }

  ngOnChanges(Map<String, SimpleChange> changes)
  {
    if (dataTable != null && _chart != null) _chart.draw(dataTable, _barChartDefaultOptions);
  }

  ngAfterContentInit()
  {
    _barChartDefaultOptions = {
      'series': {
        'labels': {
          'enabled': showLabels != null ? showLabels : true,
          'style': {
            'color': labelColor != null ? labelColor :'#212121',
            'fontFamily': xAxisLabelFontFamily,
            'fontSize': fontSize != null ? fontSize: 15,
            'fontStyle': labelFontStyle != null ? labelFontStyle: "normal",
          }
        }
      },
      'xAxis': {
        'crosshair': {
          'color': crosshairRgbaColor != null ? crosshairRgbaColor : 'rgba(0, 0, 0, .02)',
          'enabled': crosshairEnabled != null ? crosshairEnabled : false,
        },
        'gridLineColor': gridLineColor != null ? gridLineColor : '#c0c0c0',
        'gridLineWidth': gridLineWidth != null ? gridLineWidth : 1,
        'lineColor': axisLineColor != null ? axisLineColor : '#c0c0c0',
        'lineWidth': axisLineWidth != null ? axisLineWidth : 1,
        // Map - An object that controls the axis labels.
        'labels': {
          // num - The maximum rotation angle in degrees. Must be <= 90.
          'maxRotation': maxRotation != null ? maxRotation :  0,
          // num - The minimum rotation angle in degrees. Must be >= -90.
          'minRotation': minRotation != null ? minRotation : -90,
          'style': {
            'color': axisLabelColor != null ? axisLabelColor : '#212121',
            'fontFamily': xAxisLabelFontFamily != null ? xAxisLabelFontFamily : '"Segoe UI", "Open Sans", Verdana, Arial',
            'fontSize': axisLabelFontSize != null ? axisLabelFontSize : 13,
            'fontStyle': axisLabelsFontStyle != null ? axisLabelsFontStyle : 'normal'
          }
        },
        // String - The position of the axis relative to the chart area.
        // Supported values: 'bottom'.
        'position': 'bottom',
        'title': {
          'style': {
            'color': chartTitleColor != null ? chartTitleColor : '#212121',
            'fontFamily': chartTitlelFontFamily != null ? chartTitlelFontFamily : '"Segoe UI", "Open Sans", Verdana, Arial',
            'fontSize': chartTitleFontSize != null ? chartTitleFontSize : 15,
            'fontStyle': chartTitleFontStyle != null ?  chartTitleFontStyle : 'normal'
          },
          'text': chartTitle != null ? chartTitle : null
        }
      },
      // Map - An object that controls the y-axis.
      'yAxis': {
        'gridLineColor': verticalGridLineColor != null ? verticalGridLineColor : '#c0c0c0',
        'gridLineWidth': verticalGridLineWidth != null ? verticalGridLineWidth : 0,
        'lineColor': yAxisColor != null ? yAxisColor : '#c0c0c0',
        'lineWidth': yAxisLineWidth != null ? yAxisLineWidth : 0,
        'interval': yAxisInterval != null ? yAxisInterval : null,
        'labels': {
          // (num value) -> String - A function that formats the labels.
          'formatter': null,
          'style': {
            'color': yAxisLabelColor != null ? yAxisLabelColor : '#212121',
            'fontFamily': yAxisLabelsFontFamily != null ? yAxisLabelsFontFamily : '"Segoe UI", "Open Sans", Verdana, Arial',
            'fontSize': yAxisLabelFontSize != null ? yAxisLabelFontSize : 13,
            'fontStyle': yAxisLabelFontStyle != null ? yAxisLabelFontStyle : 'normal'
          },
        },
        'maxValue': yAxisMaxValue != null ? yAxisMaxValue :null,
        'minInterval': yAxisMinInterval != null ? yAxisMinInterval : null,
        'minValue': yAxisMinValue != null ? yAxisMinValue : null,
        // String - The position of the axis relative to the chart area.
        // Supported values: 'left'.
        'position': 'left',
        'title': {
          'style': {
            'color': yAxisTitleColor != null ? yAxisTitleColor : '#212121',
            'fontFamily': yAxisTitleFontFamily != null ? yAxisTitleFontFamily : '"Segoe UI", "Open Sans", Verdana, Arial' ,
            'fontSize': yAxisTitleFontSize != null ? yAxisTitleFontSize : 13,
            'fontStyle': yAxisTitleFontStyle != null ? yAxisTitleFontStyle : 'normal'
          },
          'text': yAxisTitle != null ? yAxisTitle :  null
        }
      }
    };
    if (dataTable != null && _chart != null)
    {
      _chart.draw(dataTable, _barChartDefaultOptions);
    }
  }

  BarChart _chart;
  var _barChartDefaultOptions;

  @Input('xAxisLabelFontFamily')
  String xAxisLabelFontFamily;

  @ViewChild('chart')
  ElementRef chartRef;

  @Input('dataTable')
  DataTable dataTable;

  @Input('height')
  String height;

  @Input('showLabels')
  bool showLabels;

  @Input('axisLineWidth')
  int axisLineWidth;

  @Input('fontSize')
  int fontSize;

  @Input('labelColor')
  String labelColor;

  @Input('labelFontStyle')
  String labelFontStyle;

  @Input('crosshairRgbaColor')
  String crosshairRgbaColor;

  @Input('crosshairEnabled')
  bool crosshairEnabled;

  @Input ('gridLineColor')
  String gridLineColor;

  @Input ('gridLineWidth')
  int gridLineWidth;

  @Input('axislineColor')
  String axisLineColor;

  @Input('maxRotation')
  int maxRotation;

  @Input('minRotation')
  int minRotation;

  @Input('axisLabelColor')
  String axisLabelColor;

  @Input('axisLabelFontSize')
  int axisLabelFontSize;

  @Input('axisLabelsFontStyle')
  String axisLabelsFontStyle;

  @Input('chartTitleColor')
  String chartTitleColor;

  @Input('chartTitlelFontFamily')
  String chartTitlelFontFamily;

  @Input('chartTitleFontSize')
  int chartTitleFontSize;

  @Input('chartTitleFontStyle')
  String chartTitleFontStyle;

  @Input('chartTitle')
  String chartTitle;

  @Input('verticalGridLineColor')
  String verticalGridLineColor;

  @Input ('verticalGridLineWidth')
  int verticalGridLineWidth;

  @Input('yAxisColor')
  String yAxisColor;

  @Input('yAxisLineWidth')
  int yAxisLineWidth;

  @Input('yAxisInterval')
  int yAxisInterval;

  @Input ('yAxisLabelColor')
  String yAxisLabelColor;

  @Input('yAxisLabeslFontFamily')
  String yAxisLabelsFontFamily;

  @Input('yAxisLabelFontSize')
  int yAxisLabelFontSize;

  @Input('yAxisLabelFontStyle')
  String yAxisLabelFontStyle;

  @Input('yAxisMaxValue')
  int yAxisMaxValue;

  @Input('yAxisMinInterval')
  double yAxisMinInterval;

  @Input('yAxisMinValue')
  int yAxisMinValue;

  @Input('yAxisTitleColor')
  String yAxisTitleColor;

  @Input('yAxisTitleFontFamily')
  String yAxisTitleFontFamily;

  @Input('yAxisTitleFontSize')
  int yAxisTitleFontSize;

  @Input('yAxisTitleFontStyle')
  String yAxisTitleFontStyle;

  @Input('yAxisTitle')
  String yAxisTitle;
}

