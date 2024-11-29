import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Icon(
          Icons.search,
          color: Colors.black,
          size: 35,
        ),
        Spacer(), // Spacer qo'shildi, bu ikkinchi ikonani o'ngga suradi
        Icon(
          Icons.menu_outlined,
          color: Colors.black,
          size: 35,
        ),
      ],
    );
  }
}
