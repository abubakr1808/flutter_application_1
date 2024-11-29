import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class chatpp extends StatefulWidget {
  const chatpp({super.key});

  @override
  State<chatpp> createState() => _chatppState();
}

class _chatppState extends State<chatpp> {
  int _selectedIndex = -1; // Tanlangan elementning indeksini kuzatish

  int _selectedIndex1 = -1;
  int _selectedIndexA = -1; // Tanlangan elementning indeksini kuzatish
  // int _selectedIndex2 = -1; // Tanlangan elementning indeksini kuzatish

  File? _selectedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path); // Tanlangan rasmni saqlash
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 13),
          Row(
            children: [
              SizedBox(width: 15),
              Icon(
                Icons.arrow_back_ios,
                size: 26,
                color: Color(0xff000000),
              ),
              Text(
                "Назад",
                style: TextStyle(
                  fontSize: 21,
                  color: Color(0xff666E80),
                ),
              ),
              Spacer(),
              Text(
                "Добавить прикорм",
                style: TextStyle(
                  color: Color(0xff163C63),
                  fontSize: 21,
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
          Container(
            width: double.infinity,
            height: 344,
            decoration: BoxDecoration(
              color: Color(0xffF0F2F7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 4,
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 18),
                Row(
                  children: [
                    SizedBox(width: 17),
                    Text(
                      "Продукт",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 23,
                      ),
                    ),
                    Spacer(flex: 19),
                    Icon(Icons.close),
                    Spacer(),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      "Название",
                      style: TextStyle(
                        color: Color(0xff666E80),
                        fontSize: 16,
                      ),
                    ),
                    Spacer(flex: 19),
                    Text(
                      "Грамм",
                      style: TextStyle(
                        color: Color(0xff666E80),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                      width: 385,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Мясные консервы с говядиной",
                          hintStyle: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      width: 75,
                      height: 47,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7),
                        ),
                        color: Color(0xffFFFFFF),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType:
                            TextInputType.number, // Faqat raqamli klaviatura
                        inputFormatters: [
                          FilteringTextInputFormatter
                              .digitsOnly, // Faqat son kiritishga ruxsat
                        ],
                        decoration: InputDecoration(
                          hintText: "0",
                          hintStyle: TextStyle(
                            color: Color(0xff666E80),
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Text(
                      "Реакция ребенка",
                      style: TextStyle(
                        color: Color(0xff666E80),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 70,
                          height: 90,
                          child: ListView.builder(
                            itemCount: emoge.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 140,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: _selectedIndex == index
                                        ? Colors.white
                                        : Color(0xffF0F2F7),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: Image.asset(
                                          emoge[index],
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        belgi[index],
                                        style: TextStyle(
                                          color: Color(0xff666E80),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _selectedImage != null
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.file(
                    _selectedImage!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover, // Tanlangan rasmni ko‘rsatish
                  ),
                )
              : InkWell(
                  onTap: _pickImage,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        size: 23,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Добавить продукт",
                        style: TextStyle(
                          color: Color(0xff4D4DE8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
          Spacer(flex: 32),
          Padding(
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
                          _selectedIndex1 =
                              index; // Tanlangan indeksni yangilash
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
                                ? Colors
                                    .blue // Tanlangan elementda ko'k chegarasi
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
                                Icon(qachonraqam[index],
                                    size: 23,
                                    color: _selectedIndex1 == index
                                        ? Colors.blue
                                        : Color(0xff666E80)),
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
          ),
          Spacer(flex: 3),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: ListView.builder(
                itemCount: extrachance.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndexA = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 24),
                      width: 200,
                      height: 47,
                      decoration: BoxDecoration(
                        color: _selectedIndexA == index
                            ? Colors.white
                            : Color(0xffE1E6FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (index != 1)
                            Icon(
                              edit[index],
                              color: Color(0xff4D4DE8),
                            ),
                          SizedBox(width: 8),
                          Text(
                            extrachance[index],
                            style: TextStyle(
                              color: Color.fromARGB(255, 71, 71, 220),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

List<String> extrachance = [
  "Заметка",
  "Добавить",
];

List<IconData> edit = [
  Icons.edit,
  Icons.edit,
];

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

List<String> emoge = [
  "assets/images/🙂.png",
  "assets/images/🤢.png",
  "assets/images/⚠️.png",
];

List<String> belgi = [
  "Понравилось",
  "Не понравилось",
  "Аллергическая\n      реакция",
];
