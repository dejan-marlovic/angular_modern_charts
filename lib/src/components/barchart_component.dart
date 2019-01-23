part of chart_component;

@Component(
    selector: 'barchart',
    templateUrl: 'chart_component.html',
    directives: const [coreDirectives],
    changeDetection: ChangeDetectionStrategy.OnPush)
class BarChartComponent extends ChartComponent {
  BarChartComponent(html.Element hostElement) : super(hostElement) {
    chartProperties = new BarChartProperties();
  }

  @override
  void ngAfterViewInit() {
    print(chartData.runtimeType);
    _chart = new BarChart(_hostElement.querySelector('#chart'))
      ..draw(chartData.encoded, optionsData);

    
  }
}
