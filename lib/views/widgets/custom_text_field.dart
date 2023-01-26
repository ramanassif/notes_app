import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.maxLines,
    this.onSaved,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
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
