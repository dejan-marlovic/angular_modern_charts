part of chart_component;

@Component(
    selector: 'piechart',
    templateUrl: 'chart_component.html',
    directives: [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class PieChartComponent extends ChartComponent {
  PieChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = PieChartProperties();
  }
  @override
  void ngAfterViewInit() {
    _chart = PieChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
