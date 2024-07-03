import 'package:flutter/material.dart';

class SearchbarWidget extends StatefulWidget {
  const SearchbarWidget({super.key});

  @override
  State<SearchbarWidget> createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 14, 0, 14),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          filled: true,
          fillColor: const Color(0xfff0f3f8),
          labelText: 'iphone 13',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: const TextStyle(
            color: Color(0xff373b3e),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xfff0f3f8),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xfff0f3f8),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIcon: Image.asset('assets/search.png'),
          suffixText: 'Cari',
          suffixStyle: const TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color(0xff373b3e),
          ),
        ),
      ),
    );
  }
}
