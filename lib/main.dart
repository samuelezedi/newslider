import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Example',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Slider Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _sliderDiscreteValue = 20;
  RangeValues _rangeSliderDiscreteValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(

          children: <Widget>[
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                  valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                ),
                child: Slider(
                  value: _sliderDiscreteValue,
                  min: 0,
                  max: 100,
                  divisions: 5,
                  label: _sliderDiscreteValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _sliderDiscreteValue = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                  rangeValueIndicatorShape: PaddleRangeSliderValueIndicatorShape(),
                ),
                child: RangeSlider(
                  values: _rangeSliderDiscreteValues,
                  min: 0,
                  max: 100,
                  divisions: 5,
                  labels: ,
                ),
              ),
            )
          ],
        ),
      );
  }
}
