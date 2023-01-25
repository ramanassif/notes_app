import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPress;

  const CustomAppBar(
      {Key? key, required this.title, required this.icon, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          onPress: onPress,
        ),
      ],
    );
  }
}
