import 'package:flutter/material.dart';

class CustemTextFiled extends StatelessWidget {
  const CustemTextFiled({
    super.key,
    required this.hintText,
    required this.obscureText, this.validator,
  });
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator; // النوع الصح

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validator ,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFDFDFF),
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xffC2C2C2)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
