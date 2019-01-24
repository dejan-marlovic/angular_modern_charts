part of chart_component;

@Component(
    selector: 'linechart',
    templateUrl: 'chart_component.html',
    directives: [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class LineChartComponent extends ChartComponent {
  LineChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = LineChartProperties();
  }

  @override
  void ngAfterViewInit() {
    _chart = LineChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
