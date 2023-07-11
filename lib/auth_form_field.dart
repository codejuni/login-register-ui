import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  const AuthFormField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF808080),
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
          /* border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ), */
        ),
      ),
    );
  }
}
