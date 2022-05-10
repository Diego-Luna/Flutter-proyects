import 'package:fl_components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider and Checks"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 0,
              max: 400,
              activeColor: AppTheme.prymary,
              // divisions: 8,
              value: _sliderValue,
              onChanged: (value) {
                print(value);
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Image(
              image: const NetworkImage('https://www.talent-network.org/comunidades/wp-content/uploads/2019/10/MoonMakers-1.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(height: 100),
          ],
        ),
      )
    );
  }
}