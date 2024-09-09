import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldComponent extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;


  const TextfieldComponent({super.key, this.hintText, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(fontSize: 12),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle:
          TextStyle(color: Colors.grey.shade500, fontSize: 12)),
      cursorColor: Colors.black,
    );
  }
}
