import 'package:flutter/material.dart';

class BaseCustomTextField extends StatelessWidget {
  const BaseCustomTextField({
    super.key,
    required this.controller,
    this.readOnly = false,
    this.hintText = '',
  });

  final TextEditingController controller;
  final bool readOnly;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        fillColor: Colors.green.shade200,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.all(12),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.5),
        ),
        // prefixIcon: prefixIcon,
        // prefixIconColor: prefixIconColor,
        // suffixIcon: suffixIcon,
        // suffixIconColor: suffixIconColor,
      ),
    );
  }
}
