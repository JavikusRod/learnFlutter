import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _checkBoxInput = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Slider Page'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              _createSlider(),
              _checkBox(),
              Expanded(child: _createImage()),
            ],
          ),
        ),
      );

  _createSlider() => Slider(
      activeColor: Colors.purple,
      // divisions: 5,
      label: 'Image size',
      value: _sliderValue,
      min: 0,
      max: 400,
      onChanged: _checkBoxInput
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            });

  Image _createImage() => Image(
        image: AssetImage('assets/jar-loading.gif'),
        width: _sliderValue,
        fit: BoxFit.contain,
      );

  _checkBox() => CheckboxListTile(
        title: Text('Disable Slider'),
        onChanged: (value) {
          setState(() {
            _checkBoxInput = value!;
          });
        },
        value: _checkBoxInput,
      );
}
