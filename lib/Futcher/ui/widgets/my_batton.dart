import 'package:flutter/material.dart';

class MyBatton extends StatelessWidget {
  const MyBatton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // لون الباتون
        padding: EdgeInsets.symmetric(horizontal: 12), // Padding أفقي 12
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white, // لون النص
          fontSize: 16, // ممكن تغير الحجم حسب الحاجة
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
