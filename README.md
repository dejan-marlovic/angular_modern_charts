## Angular wrapper for [modern_charts](https://github.com/jolleekin/modern_charts) by jolleekin@gmail.com

### Includes chart components and models for building data and properties


### Example
app_component.dart
```dart
import 'package:angular/angular.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';

@Component(
    selector: 'app-component',
    templateUrl: 'app_component.html',
    directives: const [BarChartComponent])
class AppComponent {
  // Create some data (required)
  final barData = BarChartData([
    'Expected',
    'Result'
  ], [
    BarChartColumnData('2016', [350, 415]),
    BarChartColumnData('2017', [450, 489]),
    BarChartColumnData('2018', [500, 581])
  ]);

  // Set some properties (optional)
  final barProperties = BarChartProperties()
    ..height = '600px'
    ..xAxis.title.text = 'Year'
    ..yAxis.title.text = 'Million dollars'
    ..yAxis.minValue = 0;
}
```

app_component.html
```html
<h1>BARCHART EXAMPLE</h1>
<div>
  <barchart [chartData]="barData"
            [chartProperties]="barProperties"></barchart>
</div>
```
Output
![Output](https://github.com/dejan-marlovic/angular_modern_charts/raw/master/examples/barchart.png)