import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onPress;
  const RoundButton({
    super.key,
    required this.name,
    required this.color,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 43,
          width: double.maxFinite,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            color: color,
          ),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
