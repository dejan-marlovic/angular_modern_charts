part of chart_component;

@Component(
    selector: 'barchart',
    templateUrl: 'chart_component.html',
    directives: [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class BarChartComponent extends ChartComponent {
  BarChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = BarChartProperties();
  }

  @override
  void ngAfterViewInit() {
    _chart = BarChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
