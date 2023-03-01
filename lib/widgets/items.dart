import 'package:craftsman_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});
  List pics = [
    Image.asset(ImageConstants.bedroomImage),
    Image.asset(ImageConstants.commonImage),
    Image.asset(ImageConstants.lampImage),
    Image.asset(ImageConstants.plus10),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var item in pics)
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: item),
        ],
      ),
    );
  }
}
