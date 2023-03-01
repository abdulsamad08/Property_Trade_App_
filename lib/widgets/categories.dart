import 'package:flutter/material.dart';

class CatogoriesWidget extends StatelessWidget {
  List text = ['House', 'Apartment', 'Flat', 'Shop', 'Place', 'Place'];
  List tempText = [];
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var text in text)
            InkWell(
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: pressed
                        ? const Color(0xffEAF1FF)
                        : const Color(0xff0F2F44),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        '$text',
                        style: TextStyle(
                            color: pressed ? Colors.black : Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                if (tempText.contains(text.toString())) {
                  tempText.remove(text);
                } else {
                  tempText.add(text.toString());
                }
                setState() {
                  // pressed = true;
                }
              },
            ),
        ],
      ),
    );
  }
}
