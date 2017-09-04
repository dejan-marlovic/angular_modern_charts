class LineChartProperties
{

  LineChartProperties(this.height);

  Map<String, dynamic> get encoded
  {
    Map<String, dynamic> options = new Map<String, dynamic>();
    options["series"] = new Map<String, dynamic>();
    options["series"]['curveTension'] = seriesCurveTension;
    options["series"]['fillOpacity'] = seriesFillOpacity;
    options["series"]['lineWidth'] = seriesLineWidth;
    options["series"]['labels']  = new Map<String, dynamic>();
    options["series"]['labels']["enabled"] = showLineLabels;
    options["series"]['labels']["style"] = new Map<String, dynamic>();
    options["series"]['labels']["style"]["fontFamily"] = xAxisLabelsFontFamily;
    options["series"]['labels']["style"]["fontSize"] = lineLabelFontSize;
    options["series"]['labels']["style"]["fontStyle"] = lineLabelFontStyle;
    options["series"]['labels']["style"]["color"] = lineLabelColor;
    options["series"]["markers"] = new Map<String,dynamic>();
    options["series"]["markers"]['enabled']  = showMarkers;
    options["series"]["markers"]['fillColor'] = markerFillColor;
    options["series"]["markers"]['lineWidth'] = markerLineWidth;
    options["series"]["markers"]['strokeColor'] = markerStrokeColor;
    options["series"]["markers"]['size'] = markerSize;

    options["xAxis"] = new Map<String, dynamic>();
    options["xAxis"]['gridLineColor'] = horisontalGridLineColor;
    options["xAxis"]['gridLineWidth'] = horisontalGridLineWidth;
    options["xAxis"]['lineColor'] = xAxisColor;
    options["xAxis"]['lineWidth'] = xAxisLineWidth;

    options["xAxis"]['labels']  = new Map<String, dynamic>();
    options["xAxis"]['labels']['maxRotation'] = xAxisLabelMaxRotation;
    options["xAxis"]['labels']['minRotation'] = xAxisLabelMinRotation;
    options["xAxis"]['labels']['style'] = new Map<String, dynamic>();
    options["xAxis"]['labels']['style']['color'] = xAxisLabelColor;
    options["xAxis"]['labels']['style']['fontFamily'] = xAxisLabelsFontFamily;
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
    options["yAxis"]['gridLineWidth'] = verticalGridLineWidth;
    options["yAxis"]['lineColor'] = yAxisColor;
    options["yAxis"]['lineWidth'] = yAxisLineWidth;
    options["yAxis"]['interval'] = yAxisInterval;
    options["yAxis"]['labels'] = new Map<String, dynamic>();
    options["yAxis"]['labels']['formatter'] = null;
    options["yAxis"]['labels']['style'] =  new Map<String, dynamic>();
    options["yAxis"]['labels']['style']['fontFamily'] = yAxisLabelsFontFamily;
    options["yAxis"]['labels']['style']['fontSize'] = yAxisLabelsFontSize;
    options["yAxis"]['labels']['style']['fontStyle'] = yAxisLabelsFontStyle;
    options["yAxis"]['labels']['style']['color'] = yAxisLabelColor;
    options["yAxis"]['maxValue'] = yAxisMaxValue;
    options["yAxis"]['minValue'] = yAxisMinValue;
    options["yAxis"]['minInterval'] = yAxisMinInterval;
    options["yAxis"]['postion'] = 'left';
    options["yAxis"]['title'] =  new Map<String, dynamic>();
    options["yAxis"]['title']['text'] = yAxisTitle;
    options["yAxis"]['title']['style'] = new Map<String, dynamic>();
    options["yAxis"]['title']['style']['color'] = yAxisTitleColor;
    options["yAxis"]['title']['style']['fontFamily'] = yAxisTitleFontFamily;
    options["yAxis"]['title']['style']['fontSize'] = yAxisTitleFontSize;
    options["yAxis"]['title']['style']['fontStyle'] = yAxisTitleFontStyle;

    return options;
  }

  String chartTitle = null;
  String chartTitleColor = '#212121';
  String chartTitleFontFamily = '"Segoe UI", Open Sans, Verdana, Arial';
  num chartTitleFontSize = 15;
  String chartTitleFontStyle = 'normal';
  String height;
  String horisontalGridLineColor = '#c0c0c0';
  num horisontalGridLineWidth = 1;
  String lineLabelColor = '#212121';
  num lineLabelFontSize = 15;
  String lineLabelFontStyle = 'normal';
  String markerFillColor = null;
  num markerLineWidth = 1;
  num markerSize = 4;
  String markerStrokeColor = 'white';
  num seriesCurveTension = .4;
  num seriesFillOpacity = .25;
  num seriesLineWidth = 2;
  bool showLineLabels = true;
  bool showMarkers = true;
  String verticalGridLineColor = '#c0c0c0';
  num verticalGridLineWidth = 1;
  String xAxisColor = '#c0c0c0';
  String xAxisLabelColor = '#212121';
  num xAxisLabelFontSize = 15;
  num xAxisLabelMaxRotation = 0;
  num xAxisLabelMinRotation = -90;
  String xAxisLabelsFontFamily = '"Segoe UI", Open Sans, Verdana, Arial';
  String xAxisLabelsFontStyle = 'normal';
  num xAxisLineWidth = 1;
  String yAxisColor = '#c0c0c0';
  num yAxisInterval = null;
  String yAxisLabelColor = '#212121';
  String yAxisLabelsFontFamily = '"Segoe UI", Open Sans, Verdana, Arial';
  num yAxisLabelsFontSize = 15;
  String yAxisLabelsFontStyle = 'normal';
  num yAxisLineWidth = 0;
  num yAxisMaxValue = null;
  num yAxisMinInterval = null;
  num yAxisMinValue = null;
  String yAxisTitle = null;
  String yAxisTitleColor = '#212121';
  String yAxisTitleFontFamily = '"Segoe UI", Open Sans, Verdana, Arial';
  num yAxisTitleFontSize = 20;
  String yAxisTitleFontStyle = 'normal';
}