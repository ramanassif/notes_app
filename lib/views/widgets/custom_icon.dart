import 'package:flutter/material.dart';
import 'package:notes_app/services/theme_service/theme_service.dart';
import 'package:provider/provider.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPress;

  const CustomIcon({Key? key, required this.icon, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Provider.of<ThemeServices>(context).mode == ThemeMode.dark
            ? Colors.white.withOpacity(0.05)
            : Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPress,
          icon: Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
