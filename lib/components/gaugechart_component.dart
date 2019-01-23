part of chart_component;

@Component(
    selector: 'gaugechart',
    templateUrl: 'chart_component.html',
    directives: const [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class GaugeChartComponent extends ChartComponent {
  GaugeChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = new GaugeChartProperties();
  }

  @override
  void ngAfterViewInit() {
    _chart = new GaugeChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
