import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderOne extends StatefulWidget {
  const SliderOne({Key? key}) : super(key: key);

  @override
  State<SliderOne> createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  double? val = 0;
  double? cupertinoVal = 0;
  double? startValue = 25;
  double? endValue = 55;
  double? currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 20.0,
              trackShape: const RoundedRectSliderTrackShape(),
              activeTrackColor: Colors.purple.shade800,
              inactiveTrackColor: Colors.purple.shade100,
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 50.0,
                pressedElevation: 8.0,
              ),
              thumbColor: Colors.pinkAccent,
              overlayColor: Colors.pink.withOpacity(0.2),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 32.0),
              tickMarkShape: const RoundSliderTickMarkShape(),
              activeTickMarkColor: Colors.pinkAccent,
              inactiveTickMarkColor: Colors.white,
              valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.black,
              valueIndicatorTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            child: Slider(
              min: 0.0,
              max: 100.0,
              value: currentSliderValue!.round().toDouble(),
              divisions: 5,
              label: '${currentSliderValue!.round()}',
              onChanged: (value) {
                currentSliderValue = value;
                setState(() {});
              },
            ),
          ),
          CupertinoSlider(
            activeColor: Colors.purple,
            // inactiveColor: Colors.purple.shade100,
            thumbColor: Colors.pink,
            min: 0.0,
            max: 100.0,
            value: cupertinoVal!,
            onChanged: (value) {
              setState(
                () {
                  cupertinoVal = value.toDouble();
                },
              );
            },
          ),
          RangeSlider(
            min: 0.0,
            max: 100.0,
            activeColor: Colors.purple,
            inactiveColor: Colors.purple.shade100,
            values: RangeValues(startValue!, endValue!),
            onChanged: (values) {
              setState(
                () {
                  startValue = values.start;
                  endValue = values.end;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
