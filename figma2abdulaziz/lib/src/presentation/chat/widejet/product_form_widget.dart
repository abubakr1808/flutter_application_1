import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductFormWidget extends StatefulWidget {
  const ProductFormWidget({super.key});

  @override
  State<ProductFormWidget> createState() => _ProductFormWidgetState();
}

class _ProductFormWidgetState extends State<ProductFormWidget> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
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
    );
  }
}

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
