class GaugeChartProperties
{
  GaugeChartProperties(this.height);

  Map<String, dynamic> get encoded
  {
    final options = <String, dynamic>{};
    // num - If between 0 and 1, displays a donut chart. The hole with have a
    // radius equal to this value times the radius of the chart.
    options['gaugeBackgroundColor'] = gaugeBackgroundColor;
    options['gaugeLabels'] = <String, dynamic>{};
    options['gaugeLabels']['enabled'] = showSeriesLabels;
    options['gaugeLabels']['style']  = <String, dynamic>{};
    options['gaugeLabels']['style']['color'] = gaugeLabelsColor;
    options['gaugeLabels']['style']['fontFamily'] = seriesLabelsFontFamily;
    options['gaugeLabels']['style']['fontSize'] = seriesLabelFontSize;
    options['gaugeLabels']['style']['fontStyle'] = seriesLabelFontStyle;

    return options;
  }

  bool counterclockwise = false;
  String height;
  num gaugeHole = 0;
  String gaugeBackgroundColor = '#dbdbdb';
  String seriesLabelsFontFamily = "'Segoe UI', Open Sans, Verdana, Arial";
  String seriesLabelFontStyle = 'normal';
  num seriesLabelFontSize = 15;
  String gaugeLabelsColor = '#212121';
  bool showSeriesLabels = true;
}