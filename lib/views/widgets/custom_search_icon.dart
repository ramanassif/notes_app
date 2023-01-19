import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;

  const CustomSearchIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
