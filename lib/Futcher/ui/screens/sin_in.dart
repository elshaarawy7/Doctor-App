import 'package:doctor_app/core/util/styles/color.app.dart';
import 'package:flutter/material.dart';

class SinIn extends StatelessWidget {
  const SinIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 100,) , 

            Text("Welcom Back" , style: TextStyle(
              color:Color_app.blue , 
              fontSize: 30 ,  
              fontWeight: FontWeight.bold , 
            ),) , 

            Text("We're excited to have you back, can't wait to see what you've been up to since you last logged in." , 
             style: TextStyle(
              color: Colors.grey , 
              fontSize: 16 , 
              fontWeight: FontWeight.w400 , 
             ), 
             maxLines: 3, 
             overflow: TextOverflow.ellipsis,
            ) , 

            
            
          ],
        ),
      ),
    );
  }
}