class BarChartProperties {
  BarChartProperties(this.height);

  Map<String, dynamic> get encoded {
    final options = <String, dynamic>{};
    options['series'] = <String, dynamic>{};
    options['series']['labels'] = <String, dynamic>{};
    options['series']['labels']['enabled'] = showBarLabels;
    options['series']['labels']['style'] = <String, dynamic>{};
    options['series']['labels']['style']['fontFamily'] = xAxisLabelFontFamily;
    options['series']['labels']['style']['fontSize'] = barLabelFontSize;
    options['series']['labels']['style']['fontStyle'] = barLabelFontStyle;
    options['series']['labels']['style']['color'] = barLabelColor;
    options['xAxis'] = <String, dynamic>{};
    options['xAxis']['crosshair'] = <String, dynamic>{};
    options['xAxis']['crosshair']['color'] = crosshairRgbaColor;
    options['xAxis']['crosshair']['enabled'] = crosshairEnabled;
    options['xAxis']['gridLineColor'] = horisontalGridLineColor;
    options['xAxis']['gridLineWidth'] = horisontalGridLineWidth;
    options['xAxis']['lineColor'] = xAxisColor;
    options['xAxis']['lineWidth'] = xAxisLineWidth;
    options['xAxis']['labels'] = <String, dynamic>{};
    options['xAxis']['labels']['maxRotation'] = xAxisLabelMaxRotation;
    options['xAxis']['labels']['minRotation'] = xAxisLabelMinRotation;
    options['xAxis']['labels']['style'] = <String, dynamic>{};
    options['xAxis']['labels']['style']['color'] = xAxisLabelColor;
    options['xAxis']['labels']['style']['fontFamily'] = xAxisLabelFontFamily;
    options['xAxis']['labels']['style']['fontSize'] = xAxisLabelFontSize;
    options['xAxis']['labels']['style']['fontStyle'] = xAxisLabelsFontStyle;
    options['xAxis']['position'] = 'bottom'; //only bottom supported
    options['xAxis']['title'] = <String, dynamic>{};
    options['xAxis']['title']['style'] = <String, dynamic>{};
    options['xAxis']['title']['style']['color'] = chartTitleColor;
    options['xAxis']['title']['style']['fontFamily'] = chartTitleFontFamily;
    options['xAxis']['title']['style']['fontSize'] = chartTitleFontSize;
    options['xAxis']['title']['style']['fontStyle'] = chartTitleFontStyle;
    options['xAxis']['title']['text'] = chartTitle;

    options['yAxis'] = <String, dynamic>{};
    options['yAxis']['gridLineColor'] = verticalGridLineColor;
    options['yAxis']['gridLineWidth'] = verticalGridLineWidth;
    options['yAxis']['lineColor'] = yAxisColor;
    options['yAxis']['interval'] = yAxisInterval;
    options['yAxis']['labels'] = <String, dynamic>{};
    options['yAxis']['labels']['formatter'] = null;
    options['yAxis']['labels']['style'] = <String, dynamic>{};
    options['yAxis']['labels']['style']['fontFamily'] = yAxisLabelsFontFamily;
    options['yAxis']['labels']['style']['fontSize'] = yAxisLabelsFontSize;
    options['yAxis']['labels']['style']['fontStyle'] = yAxisLabelsFontStyle;
    options['yAxis']['labels']['style']['color'] = yAxisLabelColor;
    options['yAxis']['maxValue'] = yAxisMaxValue;
    options['yAxis']['minValue'] = yAxisMinValue;
    options['yAxis']['minInterval'] = yAxisMinInterval;
    options['yAxis']['postion'] = 'left';
    options['yAxis']['title'] = <String, dynamic>{};
    options['yAxis']['title']['text'] = yAxisTitle;
    options['yAxis']['title']['style'] = <String, dynamic>{};
    options['yAxis']['title']['style']['color'] = yAxisTitleColor;
    options['yAxis']['title']['style']['fontFamily'] = yAxisTitleFontFamily;
    options['yAxis']['title']['style']['fontSize'] = yAxisTitleFontSize;
    options['yAxis']['title']['style']['fontStyle'] = yAxisTitleFontStyle;

    return options;
  }

  String barLabelColor = '#212121';
  num barLabelFontSize = 15;
  String barLabelFontStyle = 'normal';
  String chartTitle;
  String chartTitleColor = '#212121';
  String chartTitleFontFamily = "'Segoe	UI',	Open Sans,	Verdana,	Arial";
  num chartTitleFontSize = 15;
  String chartTitleFontStyle = 'normal';
  bool crosshairEnabled = true;
  String crosshairRgbaColor = 'rgba(0,	0,	0,	.02)';
  String height;
  String horisontalGridLineColor = '#c0c0c0';
  num horisontalGridLineWidth = 1;
  bool showBarLabels = true;
  String verticalGridLineColor = '#c0c0c0';
  num verticalGridLineWidth = 1;

  String xAxisColor = '#c0c0c0';
  String xAxisLabelColor = '#212121';
  String xAxisLabelFontFamily = "'Segoe	UI',	Open Sans,	Verdana,	Arial'";
  num xAxisLabelFontSize = 15;
  num xAxisLabelMaxRotation = 0;
  num xAxisLabelMinRotation = -90;
  String xAxisLabelsFontStyle = 'normal';
  num xAxisLineWidth = 1;

  String yAxisColor = '#c0c0c0';
  num yAxisInterval;
  String yAxisLabelColor = '#212121';
  String yAxisLabelsFontFamily = "'Segoe	UI',	Open Sans,	Verdana,	Arial'";
  num yAxisLabelsFontSize = 15;
  String yAxisLabelsFontStyle = 'normal';
  num yAxisLineWidth = 0;
  num yAxisMaxValue;
  num yAxisMinInterval;
  num yAxisMinValue;
  String yAxisTitle;
  String yAxisTitleColor = '#212121';
  String yAxisTitleFontFamily = "'Segoe	UI',	Open Sans,	Verdana,	Arial'";
  num yAxisTitleFontSize = 20;
  String yAxisTitleFontStyle = 'normal';
}
