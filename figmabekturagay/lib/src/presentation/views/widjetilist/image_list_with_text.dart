// import 'package:figmabekturagay/src/presentation/views/list/list.dart';
import 'package:flutter/material.dart';

class ImageListWithText extends StatefulWidget {
  const ImageListWithText({super.key});

  @override
  State<ImageListWithText> createState() => _ImageListWithTextState();
}

class _ImageListWithTextState extends State<ImageListWithText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1111,
      height: 300,
      child: ListView.builder(
        itemCount: maydarasmlar.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(11.0),
            child: Center(
              child: Container(
                width: 419,
                height: 65,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(-0.1, 0.9),
                    ),
                  ],
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      maydarasmlar[index],
                    ),
                    SizedBox(width: 13),
                    Text(Birbalo[index]),
                    SizedBox(
                      width: 273,
                    ),
                    Text(yanabirbalo[index]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> maydarasmlar = [
  "/images/umbrella.png",
  "/images/Vector.png",
  "/images/tomchi.png",
];
List<String> Birbalo = [
  "RainFall",
  "Wind",
  "Humidity",
];
List<String> yanabirbalo = [
  "3cm",
  "19km/h",
  "64%",
];
