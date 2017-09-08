class RadarChartProperties
{

  RadarChartProperties(this.height);

  Map<String, dynamic> get encoded
  {
    Map<String, dynamic> options = new Map<String, dynamic>();
    options["series"] = new Map<String, dynamic>();
    options["series"]['fillOpacity'] = seriesFillOpacity;
    options["series"]['lineWidth'] = seriesLineWidth;
    options["series"]['labels']  = new Map<String, dynamic>();
    options["series"]['labels']["enabled"] = showLabels;
    options["series"]['labels']["style"] = new Map<String, dynamic>();
    options["series"]['labels']["style"]["fontFamily"] = radialLabelsFontFamily;
    options["series"]['labels']["style"]["fontSize"] = labelsFontSize;
    options["series"]['labels']["style"]["fontStyle"] = labelFontStyle;
    options["series"]['labels']["style"]["color"] = labelColor;
    options ["markers"] = new Map<String, dynamic>();
    options ["markers"]['enabled']  = showMarkers;
    options ["markers"]['fillColor'] = markerFillColor;
    options ["markers"]['lineWidth'] = markerLineWidth;
    options ["markers"]['strokeColor'] = markerStrokeColor;
    options ["markers"]['size'] = markerSize;

    options["xAxis"] = new Map<String, dynamic>();
    options["xAxis"]['gridLineWidth'] = frameworkLineWidth;
    options["xAxis"]['gridLineColor'] = frameworkLineColor;

    options["xAxis"]['labels']  = new Map<String, dynamic>();
    options["xAxis"]['labels']['style'] = new Map<String, dynamic>();
    options["xAxis"]['labels']['style']['color'] = radialLabelsColor;
    options["xAxis"]['labels']['style']['fontFamily'] = radialLabelsFontFamily;
    options["xAxis"]['labels']['style']['fontSize'] = radialLabelFontSize;
    options["xAxis"]['labels']['style']['fontStyle'] = radialLabelsFontStyle;

    options["yAxis"] = new Map<String, dynamic>();
    options["yAxis"]['gridLineColor'] = radialLineColor;
    options["yAxis"]['gridLineWidth'] = radialLineWidth;
    options["yAxis"]['interval'] = yAxisInterval;
    options["yAxis"]['labels'] = new Map<String, dynamic>();
    options["yAxis"]['labels']['formatter'] = null;
    options["yAxis"]['labels']['style'] =  new Map<String, dynamic>();
    options["yAxis"]['labels']['style']['fontFamily'] = yAxisLabelsFontFamily;
    options["yAxis"]['labels']['style']['fontSize'] = yAxisLabelsFontSize;
    options["yAxis"]['labels']['style']['fontStyle'] = yAxisLabelsFontStyle;
    options["yAxis"]['labels']['style']['color'] = yAxisLabelColor;
    options["yAxis"]['minInterval'] = yAxisMinInterval;

    return options;
  }


  String	height;
  String	frameworkLineColor	=	'#c0c0c0';
  num	frameworkLineWidth	=	1;
  String	labelColor	=	'#212121';
  num	radialLabelFontSize	=	15;
  String	labelFontStyle	=	'normal';
  String	radialLabelsFontFamily	=	'"Segoe	UI",	Open	Sans,	Verdana,	Arial';
  num	labelsFontSize	=	15;
  String	radialLabelsFontStyle	=	'normal';
  String	markerFillColor	=	null;
  num	markerLineWidth	=	1;
  num	markerSize	=	4;
  String	markerStrokeColor	=	'white';
  num	seriesFillOpacity	=	.25;
  num	seriesLineWidth	=	2;
  bool	showMarkers	=	true;
  bool	showLabels	=	true;

  String	radialLineColor	=	'#c0c0c0';
  String	radialLabelsColor	=	'#212121';
  num	radialLineWidth	=	1;

  num	yAxisInterval	=	null;
  String	yAxisLabelColor	=	'#212121';
  String	yAxisLabelsFontFamily	=	'"Segoe	UI",	Open	Sans,	Verdana,	Arial';
  num	yAxisLabelsFontSize	=	15;
  String	yAxisLabelsFontStyle	=	'normal';
  num	yAxisMinInterval	=	null;
}