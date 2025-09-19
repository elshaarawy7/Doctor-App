import 'package:flutter/material.dart';

class MyBatton extends StatelessWidget {
  const MyBatton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
  onPressed: onPressed , 
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF1E90FF), // Blue color similar to the button
    padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  child: Text(
    text,
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
  ),
);
  }
}
