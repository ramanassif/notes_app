import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/constants.dart';


class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final TextEditingController textEditingController;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.maxLines,
    this.onSaved,
    this.onChanged,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: buildBorder(
            Get.isDarkMode
                ? Colors.white
                : Colors.black),
        enabledBorder: buildBorder(
            Get.isDarkMode
                ? Colors.white
                : Colors.black),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
