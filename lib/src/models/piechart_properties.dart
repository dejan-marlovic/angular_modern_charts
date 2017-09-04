class PieChartProperties
{

  PieChartProperties(this.height);

  Map<String, dynamic> get encoded
  {

    Map<String, dynamic> options = new Map<String, dynamic>();
    // num - If between 0 and 1, displays a donut chart. The hole with have a
    // radius equal to this value times the radius of the chart.
    options["pieHole"] = pieHole;
    options["series"] = new Map<String, dynamic>();
    options["series"]['counterclockwise'] = counterclockwise;
    options["series"]['labels']  = new Map<String, dynamic>();
    options["series"]['labels']["enabled"] = showSeriesLabels;
    options["series"]['labels']["style"] = new Map<String, dynamic>();
    options["series"]['labels']["style"]["fontFamily"] = seriesLabelsFontFamily;
    options["series"]['labels']["style"]["fontSize"] = seriesLabelFontSize;
    options["series"]['labels']["style"]["fontStyle"] = seriesLabelFontStyle;
    options["series"]['labels']["style"]["color"] = seriesLabelColor;
    options["series"]['startAngle'] = startAngle;

    return options;
  }

  bool counterclockwise = false;
  String height;
  num pieHole = 0;
  String seriesLabelColor = '#212121';
  String seriesLabelsFontFamily = '"Segoe UI", Open Sans, Verdana, Arial';
  String seriesLabelFontStyle = 'normal';
  num seriesLabelFontSize = 15;
  num startAngle = -90;
  bool showSeriesLabels = true;
}