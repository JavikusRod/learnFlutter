import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Slider Page'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [_createSlider()],
          ),
        ),
      );

  _createSlider() => Slider(
      activeColor: Colors.purple,
      inactiveColor: Colors.blue,
      divisions: 20,
      label: 'Image size',
      value: _sliderValue,
      min: 0,
      max: 100,
      onChanged: (value) {
        setState(() {
          _sliderValue = value;
        });
      });
}
