import 'package:fl_components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider and Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.prymary,
            // divisions: 8,
            value: _sliderValue,
            onChanged:_sliderEnable?
            (value) {
              print(value);
              setState(() {
                _sliderValue = value;
              });
            }
            :
            null,
          ),

          Checkbox(
            value: _sliderEnable,
            onChanged: (value){
              setState(() {
                _sliderEnable = value ?? true;
              });
            }
          ),

          CheckboxListTile(
            activeColor: AppTheme.prymary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            }),
          ),

          Switch(
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.prymary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.talent-network.org/comunidades/wp-content/uploads/2019/10/MoonMakers-1.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      )
    );
  }
}