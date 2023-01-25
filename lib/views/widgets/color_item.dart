import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isSelected;
  final Color color;

  const ColorItem({Key? key, required this.isSelected,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: isSelected
          ? CircleAvatar(
              backgroundColor: color,
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
            ),
    );
  }
}
