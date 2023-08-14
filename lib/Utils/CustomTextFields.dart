import 'package:flutter/material.dart';

Widget buildTextField({
  required String labelText,
  required TextEditingController controller,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    decoration: InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.black),
      ),
      labelStyle:
          const TextStyle(color: Colors.black), // Add this line to set the text color
    ),
    style: const TextStyle(color: Colors.black),
  );
}
