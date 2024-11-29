import 'package:flutter/material.dart';

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          '/images/cludy.png', // To'g'ri tasvir manzili
          width: 260,
          height: 260,
        ),
        SizedBox(width: 25), // Tasvir va matn orasiga bo'shliq qo'shildi
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "19 \n",
                style: TextStyle(
                  fontSize: 79,
                  color: Color(0xff303345), // Raqamni qora rangda
                ),
              ),
              TextSpan(
                text: "  Rainy",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff303345), // Havo holatini ko'k rangda
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 89, right: 23),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "\u00B0",
                  style: TextStyle(
                    color: Color(0xff303345),
                    fontSize: 29,
                  ),
                ),
                TextSpan(
                  text: "c",
                  style: TextStyle(
                    color: Color(0xff303345),
                    fontSize: 36,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
