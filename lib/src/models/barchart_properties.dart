class BarChartProperties
{
  BarChartProperties(this.xAxisLabelFontFamily,
      this.height,
      this.showBarLabels,
      this.xAxisLineWidth,
      this.barLabelFontSize,
      this.barLabelColor,
      this.barLabelFontStyle,
      this.crosshairRgbaColor,
      this.crosshairEnabled,
      this.gridLineColor,
      this.gridLineWidth,
      this.xAxisColor,
      this.xAxisLabelmaxRotation,
      this.xAxisLabelminRotation,
      this.xAxisLabelColor,
      this.xAxisLabelFontSize,
      this.xAxisLabelsFontStyle,
      this.chartTitleColor,
      this.chartTitlelFontFamily,
      this.chartTitleFontStyle,
      this.chartTitle,
      this.verticalGridLineColor,
      this.verticalGridLineWidth,
      this.yAxisColor,
      this.yAxisLineWidth,
      this.yAxisInterval,
      this.yAxisLabelsColor,
      this.yAxisLabelsFontFamily,
      this.yAxisLabeslFontSize,
      this.yAxisLabelsFontStyle,
      this.yAxisMaxValue,
      this.yAxisMinValue,
      this.yAxisMinInterval,
      this.yAxisTitleColor,
      this.yAxisTitleFontFamily,
      this.yAxisTitleFontSize,
      this.yAxisTitleFontStyle,
      this.yAxisTitle);

  Map<dynamic, dynamic> get encoded
  {
    /*
    Map<String, dynamic> output;

    Map<dynamic, dynamic> barchartOptions = new Map<dynamic,dynamic>();
    barchartOptions["series"] = new Map<dynamic, dynamic>();
    barchartOptions["series"]['labels'] = new Map<dynamic, dynamic>();
    barchartOptions["series"]['labels']["enabled"] = showBarLabels;
    barchartOptions["series"]['labels']["style"] = new Map<dynamic, dynamic>();
    barchartOptions["series"]['labels']["style"]["fontFamily"] = xAxisLabelFontFamily;
    Map<dynamic, dynamic> whatever = {
      'series': {
        'labels': {
          'enabled': showBarLabels != null ? showBarLabels : true,
          'style': {
            'color': barLabelColor != null ? barLabelColor :'#212121',
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
            'fontStyle': yAxisLabelsFontStyle != null ? yAxisLabelsFontStyle : 'normal'
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



    return output;
    */
  }




  String xAxisLabelFontFamily;
  String height;
  bool showBarLabels = true;
  int xAxisLineWidth;
  int barLabelFontSize;
  String barLabelColor = "#212121";
  String barLabelFontStyle;
  String crosshairRgbaColor;
  bool crosshairEnabled;
  String gridLineColor;
  int gridLineWidth;
  String xAxisColor;
  int xAxisLabelmaxRotation;
  int xAxisLabelminRotation;
  String xAxisLabelColor;
  int xAxisLabelFontSize;
  String xAxisLabelsFontStyle;
  String chartTitleColor;
  String chartTitlelFontFamily;
  int chartTitleFontSize;
  String chartTitleFontStyle;
  String chartTitle;

  String verticalGridLineColor;
  int verticalGridLineWidth;
  String yAxisColor;
  int yAxisLineWidth;
  int yAxisInterval;
  String yAxisLabelsColor;
  String yAxisLabelsFontFamily;
  int yAxisLabeslFontSize;
  String yAxisLabelsFontStyle;
  int yAxisMaxValue;
  double yAxisMinInterval;
  int yAxisMinValue;
  String yAxisTitleColor;
  String yAxisTitleFontFamily;
  int yAxisTitleFontSize;
  String yAxisTitleFontStyle;
  String yAxisTitle;
}