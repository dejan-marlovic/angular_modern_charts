part of chart_component;

@Component(
    selector: 'piechart',
    templateUrl: 'chart_component.html',
    directives: const [coreDirectives],
    changeDetection: ChangeDetectionStrategy.OnPush)
class PieChartComponent extends ChartComponent {

  PieChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = new PieChartProperties();
  }
  @override
  void ngAfterViewInit() {
    _chart = new PieChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
