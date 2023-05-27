import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.prefixIcon,
      this.suffixIcon})
      : super(key: key);
  final String label;
  final IconData prefixIcon;
  final Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.grey.shade400,
        ),
        suffixIcon: suffixIcon,
        labelText: label,
      ),
    );
  }
}
