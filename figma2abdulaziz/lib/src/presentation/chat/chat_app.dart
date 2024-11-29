import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Agar kerakli widgetlarni import qilishni unutsangiz, ular shu tarzda bo'lishi kerak:
import 'package:figma2abdulaziz/src/presentation/chat/widejet/product_form_widget.dart';
import 'package:figma2abdulaziz/src/presentation/chat/widejet/time_selector.dart';

class Chatpp extends StatefulWidget {
  const Chatpp({super.key});

  @override
  State<Chatpp> createState() => _ChatppState();
}

class _ChatppState extends State<Chatpp> {
  int _selectedIndexA = -1;
  File? _selectedImage;

  // Rasmni tanlash
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
            height: 343,
            decoration: BoxDecoration(
              color: Color(0xffF0F2F7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 4,
                color: Colors.white,
              ),
            ),
            child: ProductFormWidget(), // Mahsulot formasi
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
          TimeSelector(), // Vaqt tanlovchi
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
