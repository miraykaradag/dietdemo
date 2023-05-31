import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseCustomTextField extends StatelessWidget {
  const BaseCustomTextField({
    super.key,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.hintText = '',
    this.onylNums = false,
  });

  final TextEditingController controller;
  // final bool readOnly;
  final String hintText;
  final String? Function(String?)? validator;

  final TextInputType? keyboardType;
  final bool onylNums;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // readOnly: readOnly,
      inputFormatters: onylNums
          ? [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]*[.]?[0-9]')),
              LengthLimitingTextInputFormatter(10),
              // FilteringTextInputFormatter.digitsOnly,
            ]
          : null,
      validator: validator,
      keyboardType: keyboardType ?? TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        fillColor: Color.fromARGB(255, 255, 255, 255),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 120, 175, 119)),
        contentPadding: const EdgeInsets.all(12),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(0, 44, 40, 40),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 95, 91, 91),
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
