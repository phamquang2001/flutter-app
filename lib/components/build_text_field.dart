import 'package:flutter/material.dart';

Widget buildTextField(
  String label,
  TextEditingController controller, {
  String? Function(String?)? validator,
  bool obscureText = false,
  readOnly = true,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextFormField(
      readOnly: readOnly,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
    ),
  );
}
