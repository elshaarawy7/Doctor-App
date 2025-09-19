import 'package:flutter/material.dart';

class CustemDivider extends StatelessWidget {
  const CustemDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Expanded(
      child: Divider(
        thickness: 0.5,
        color: Colors.grey,
      ),
    ),

    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        "Or sign in with",
        style: TextStyle(color: Colors.grey),
      ),
    ),

    Expanded(
      child: Divider(
        thickness: 0.5,
        color: Colors.grey,
      ),
    ),
  ],
);

  }
}