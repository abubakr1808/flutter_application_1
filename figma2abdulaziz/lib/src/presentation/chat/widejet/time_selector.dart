import 'package:flutter/material.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({super.key});

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  int _selectedIndex1 = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1),
      child: Container(
        width: double.infinity, // Kenglikni butun ekran bo'ylab sozlash
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xffE1E6FF),
          borderRadius: BorderRadius.circular(9),
        ),
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: qachon.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex1 = index; // Tanlangan indeksni yangilash
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 140,
                  decoration: BoxDecoration(
                    color: _selectedIndex1 == index
                        ? Colors.white // Tanlangan elementda oq rang
                        : Color(
                            0xffE1E6FF), // Tanlanmagan elementda original rang
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: _selectedIndex1 == index
                          ? Colors.blue // Tanlangan elementda ko'k chegarasi
                          : Colors
                              .transparent, // Tanlanmagan elementda chegara yo'q
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (index > 0)
                          Icon(
                            qachonraqam[index],
                            size: 23,
                            color: _selectedIndex1 == index
                                ? Colors.blue
                                : Color(0xff666E80),
                          ),
                        SizedBox(width: 8),
                        Text(
                          qachon[index],
                          style: TextStyle(
                            color: _selectedIndex1 == index
                                ? Colors.blue
                                : Color(0xff666E80),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<IconData> qachonraqam = [
  Icons.access_time,
  Icons.calendar_month_sharp,
  Icons.timer_outlined,
];

List<String> qachon = [
  "Сейчас",
  "16:32",
  "14 сентября",
];
