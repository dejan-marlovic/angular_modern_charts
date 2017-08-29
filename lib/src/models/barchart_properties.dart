class BarChartProperties
{

  BarChartProperties(this.height);

  Map<String, dynamic> get encoded
  {

    Map<String, dynamic> output = new Map<String, dynamic>();

    Map<String, dynamic> options = new Map<String, dynamic>();
    options["series"] = new Map<String, dynamic>();
    options["series"]['labels'] = new Map<String, dynamic>();
    options["series"]['labels']["enabled"] = showBarLabels;
    options["series"]['labels']["style"] = new Map<String, dynamic>();
    options["series"]['labels']["style"]["fontFamily"] = xAxisLabelFontFamily;
    options["series"]['labels']["style"]["fonSize"] = barLabelFontSize;
    options["series"]['labels']["style"]["fonStyle"] = barLabelFontStyle;
    options["xAxis"] = new Map<String, dynamic>();
    options["xAxis"]['crosshair'] = new Map<String, dynamic>();
    options["xAxis"]['crosshair']['color'] = crosshairRgbaColor;
    options["xAxis"]['crosshair']['enabled'] = crosshairEnabled;
    options["xAxis"]['gridLineColor'] = gridLineColor;
    options["xAxis"]['gridLineWidth'] = gridLineWidth;
    options["xAxis"]['lineColor'] = xAxisColor;
    options["xAxis"]['lineWidth'] = xAxisLineWidth;
    options["xAxis"]['labels']  = new Map<String, dynamic>();
    options["xAxis"]['labels']['maxRotation'] = xAxisLabelMaxRotation;
    options["xAxis"]['labels']['minRotation'] = xAxisLabelMinRotation;
    options["xAxis"]['labels']['style'] = new Map<String, dynamic>();
    options["xAxis"]['labels']['style']['color'] = xAxisLabelColor;
    options["xAxis"]['labels']['style']['fontFamily'] = xAxisLabelFontFamily;
    options["xAxis"]['labels']['style']['fontSize'] = xAxisLabelFontSize;
    options["xAxis"]['labels']['style']['fontStyle'] = xAxisLabelsFontStyle;
    options["xAxis"]['position'] = 'bottom'; //only bottom supported
    options["xAxis"]['title'] = new Map<String, dynamic>();
    options["xAxis"]['title']['style'] = new Map<String, dynamic>();
    options["xAxis"]['title']['style']['color'] = chartTitleColor;
    options["xAxis"]['title']['style']['fontFamily'] = chartTitleFontFamily;
    options["xAxis"]['title']['style']['fontSize'] = chartTitleFontSize;
    options["xAxis"]['title']['style']['fontStyle'] = chartTitleFontStyle;
    options["xAxis"]['title']['text'] = chartTitle;

    options["yAxis"] = new Map<String, dynamic>();
    options["yAxis"]['gridLineColor'] = verticalGridLineColor;
    options["yAxis"]['gridLineWidth'] = gridLineWidth;
    options["yAxis"]['lineColor'] = yAxisColor;
    options["yAxis"]['interval'] = yAxisInterval;
    options["yAxis"]['labels'] = new Map<String, dynamic>();
    options["yAxis"]['labels']['formatter'] = null;
    options["yAxis"]['labels']['style'] =  new Map<String, dynamic>();
    options["yAxis"]['labels']['style']['fontFamily'] = yAxisLabelsFontFamily;
    options["yAxis"]['labels']['style']['fontSize'] = yAxisLabeslFontSize;
    options["yAxis"]['labels']['style']['fontStyle'] = yAxisLabelsFontStyle;
    options["yAxis"]['labels']['style']['color'] = yAxisLabelColor;
    options["yAxis"]['maxValue'] = yAxisMaxValue;
    options["yAxis"]['postion'] = 'left';
    options["yAxis"]['title'] =  new Map<String, dynamic>();
    options["yAxis"]['title']['text'] = yAxisTitle;
    options["yAxis"]['title']['style'] = new Map<String, dynamic>();
    options["yAxis"]['title']['style']['color'] = yAxisTitleColor;
    options["yAxis"]['title']['style']['fontFamily'] = yAxisTitleFontFamily;
    options["yAxis"]['title']['style']['fontSize'] = yAxisTitleFontSize;
    options["yAxis"]['title']['style']['fontStyle'] = yAxisTitleFontStyle;

    return output;
  }




  String xAxisLabelFontFamily = '"Segoe UI", "Open Sans", Verdana, Arial';
  String height;
  bool showBarLabels = true;
  int xAxisLineWidth = 1;
  int barLabelFontSize = 15;
  String barLabelColor = "#212121";
  String barLabelFontStyle = 'normal';
  String crosshairRgbaColor = 'rgba(0, 0, 0, .02)';
  bool crosshairEnabled = true;
  String gridLineColor = '#c0c0c0';
  int gridLineWidth = 1;
  String xAxisColor = '#c0c0c0';
  int xAxisLabelMaxRotation = 0;
  int xAxisLabelMinRotation = -90;
  String xAxisLabelColor = '#212121';
  int xAxisLabelFontSize = 15;
  String xAxisLabelsFontStyle = 'normal';
  String chartTitleColor = '#212121';
  String chartTitleFontFamily = '"Segoe UI", "Open Sans", Verdana, Arial';
  int chartTitleFontSize = 15;
  String chartTitleFontStyle = 'normal';
  String chartTitle = null;

  String verticalGridLineColor = '#c0c0c0';
  int verticalGridLineWidth = 0;
  String yAxisColor = '#c0c0c0';
  int yAxisLineWidth = 0;
  int yAxisInterval = null;
  String yAxisLabelColor = '#212121';
  String yAxisLabelsFontFamily = '"Segoe UI", "Open Sans", Verdana, Arial';
  int yAxisLabeslFontSize = 15;
  String yAxisLabelsFontStyle = "normal";
  int yAxisMaxValue = null;
  double yAxisMinInterval = null;
  int yAxisMinValue = null;
  String yAxisTitleColor = '#212121';
  String yAxisTitleFontFamily = '"Segoe UI", "Open Sans", Verdana, Arial';
  int yAxisTitleFontSize = 15;
  String yAxisTitleFontStyle = 'normal';
  String yAxisTitle = null;

}