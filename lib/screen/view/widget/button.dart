import 'package:flutter/material.dart';

Widget customButton({
  String? labelText,
  Color? bgColor,
  Color? textColor,
  VoidCallback? onPressed,
  String? text,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      side: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
    ),
    onPressed: onPressed,
    child: SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          text ?? "",
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: "Helvetica",
          ),
        ),
      ),
    ),
  );
}
