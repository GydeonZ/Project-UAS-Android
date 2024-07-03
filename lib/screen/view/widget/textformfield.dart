import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextFormField({
  required TextEditingController controller,
  String? labelText,
  bool? obscureText,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
  String? Function(String?)? validator,
  TextCapitalization textCapitalization = TextCapitalization.none,
}) {
  return TextFormField(
    textCapitalization: textCapitalization,
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
    controller: controller,
    obscureText: obscureText ?? false,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      filled: true,
      fillColor: Colors.white,
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: const TextStyle(
        color: Colors.blueGrey,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFF9A9A9A),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xff00974a),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xffff5963),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    validator: validator,
  );
}
