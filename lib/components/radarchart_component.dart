part of chart_component;

@Component(
    selector: 'radarchart',
    templateUrl: 'chart_component.html',
    directives: [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class RadarChartComponent extends ChartComponent {
  RadarChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = RadarChartProperties();
  }

  @override
  void ngAfterViewInit() {
    _chart = RadarChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
