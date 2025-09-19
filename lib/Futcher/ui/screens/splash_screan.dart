import 'package:doctor_app/core/util/const_image.dart';
import 'package:flutter/material.dart';

class SplashScrean extends StatelessWidget {
  const SplashScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              ConstImage.background_logo ,  
              fit: BoxFit.cover, 
            ) , 

            Image.asset(ConstImage.Logo , )
          ],
        ),
      ),
    );
  }
}
