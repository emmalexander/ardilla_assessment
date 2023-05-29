import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);
  final String label;
  final Widget prefixIcon;
  final Icon? suffixIcon;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.grey.shade400,
          suffixIcon: suffixIcon,
          labelText: label,
          labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.grey.shade500)),
    );
  }
}
