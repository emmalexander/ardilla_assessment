import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, required this.label, required this.prefixIcon})
      : super(key: key);
  final String label;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        labelText: label,
      ),
    );
  }
}
