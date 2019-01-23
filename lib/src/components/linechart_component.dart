part of chart_component;

@Component(
    selector: 'linechart',
    templateUrl: 'chart_component.html',
    directives: const [coreDirectives],
    changeDetection: ChangeDetectionStrategy.OnPush)
class LineChartComponent extends ChartComponent {
  LineChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = new LineChartProperties();
  }

  @override
  void ngAfterViewInit() {
    _chart = new LineChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
