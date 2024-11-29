// import 'package:figmabekturagay/src/presentation/views/list/list.dart';
import 'package:figmabekturagay/src/presentation/views/slider/slider.dart';
import 'package:figmabekturagay/src/presentation/views/widjet/LocationDateInfo.dart';
import 'package:figmabekturagay/src/presentation/views/widjetilist/image_list_with_text.dart';
import 'package:figmabekturagay/src/presentation/views/widjet/topbar.dart';
import 'package:figmabekturagay/src/presentation/views/widjet/weather_Info_card.dart';
import 'package:figmabekturagay/src/presentation/views/widjet/weather_segment_control.dart';
import 'package:figmabekturagay/src/presentation/views/widjetilist/weather_horizontal_list.dart';
import 'package:flutter/material.dart';

class Obhavo extends StatelessWidget {
  const Obhavo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.44),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14),
            Topbar(),
            SizedBox(height: 25),
            Locationdateinfo(),
            SizedBox(height: 20),
            WeatherInfoCard(),
            ImageListWithText(),
            WeatherSegmentControl(),
            ulchashuchun(),
            WeatherHorizontalList(),
          ],
        ),
      ),
    );
  }
}
