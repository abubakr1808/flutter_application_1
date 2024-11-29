import 'package:flutter/material.dart';

class Locationdateinfo extends StatelessWidget {
  const Locationdateinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            "Bishkek,\nKyrgyzstan",
            style: TextStyle(
              color: Color(0xff313341),
              fontSize: 32,
              fontFamily: "Inter-VariableFont_opsz,wght",
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Tue, Jun 30",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
