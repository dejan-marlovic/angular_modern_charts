part of chart_component;

@Component(
    selector: 'barchart',
    templateUrl: 'chart_component.html',
    directives: const [NgIf, NgStyle],
    changeDetection: ChangeDetectionStrategy.OnPush)
class BarChartComponent extends ChartComponent {
  BarChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = new BarChartProperties();
  }

  @override
  void ngAfterViewInit() {    
    _chart = new BarChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);
  }
}
