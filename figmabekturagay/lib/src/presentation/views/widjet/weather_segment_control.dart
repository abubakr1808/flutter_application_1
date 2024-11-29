import 'package:flutter/material.dart';

class WeatherSegmentControl extends StatelessWidget {
  const WeatherSegmentControl({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: SizedBox(
              width: 26,
            ),
          ),
          TextSpan(
            text: "Today",
            style: TextStyle(
              color: Color(0xff313341),
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: SizedBox(width: 23),
          ),
          TextSpan(
            text: "Tomorrow",
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: SizedBox(width: 150),
          ),
          TextSpan(
            text: "Next 7 Days",
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
            ),
          ),
          WidgetSpan(
            child: SizedBox(width: 19),
          ),
          WidgetSpan(
            child: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
