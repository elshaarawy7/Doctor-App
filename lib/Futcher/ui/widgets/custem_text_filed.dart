import 'package:flutter/material.dart';

class CustemTextFiled extends StatelessWidget {
  const CustemTextFiled({
    super.key,
    required this.hintText,
    required this.obscureText, 
    this.validator,
    this.icon 
  });
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator; 
  final IconData? icon ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validator ,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFDFDFF),
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon , color: Colors.grey,) : null,
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
