import 'package:figmabekturagay/src/presentation/views/list/list.dart';
import 'package:flutter/material.dart';

class WeatherHorizontalList extends StatelessWidget {
  const WeatherHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 34),
      child: SizedBox(
        width: 420,
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: suratobhavo.length,
          itemBuilder: (context, indedx) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 66,
                height: 118,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(
                        1,
                        1,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      obhavovaqtlari[indedx],
                      style: TextStyle(
                        color: Color.fromARGB(255, 64, 66, 80),
                        fontSize: 13,
                      ),
                    ),
                    Image.asset(suratobhavo[indedx]),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: SizedBox(width: 7),
                          ),
                          TextSpan(
                            text: obhavogradusi[indedx],
                            style: TextStyle(
                              color: Color(0xff303345),
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: "\u00B0",
                            style: TextStyle(
                              color: Color(0xff303345),
                              fontSize: 19,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
