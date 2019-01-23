part of chart_component;

@Component(
    selector: 'radarchart',
    templateUrl: 'chart_component.html',
    directives: const [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class RadarChartComponent extends ChartComponent {
  RadarChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = new RadarChartProperties();
  }

  @override
  void ngAfterViewInit() {
    _chart = new RadarChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
