import 'package:flutter/material.dart';

class ulchashuchun extends StatefulWidget {
  const ulchashuchun({super.key});

  @override
  State<ulchashuchun> createState() => _ulchashuchunState();
}

class _ulchashuchunState extends State<ulchashuchun> {
  double _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentValue,
      min: 0,
      max: 100,
      divisions: 100,
      activeColor: Colors.black,
      inactiveColor: Colors.black54,
      onChanged: (value) {
        setState(() {
          _currentValue = value;
        });
      },
    );
  }
}
