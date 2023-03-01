import 'package:flutter/material.dart';

class Widgets {
  static textFormField({
    required String label,
    final String? hintText,
    final Widget? prefix,
    final Widget? suffix,
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        child: SizedBox(
          height: 50,
          child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter the $label';
                }
              },
              decoration: InputDecoration(
                  prefixIcon: prefix,
                  suffixIcon: suffix,
                  label: Text(label),
                  hintText: hintText,
                  fillColor: Colors.grey[100],
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)))),
        ));
  }
}

textstile(text, colr, fontweight, double size, fontFamily) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
        fontSize: size, fontFamily: '', fontWeight: fontweight, color: colr),
  );
}
