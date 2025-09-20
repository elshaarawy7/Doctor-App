import 'package:doctor_app/Futcher/ui/screens/doctor_speciality.dart';
import 'package:doctor_app/Futcher/ui/screens/onboarding_screen.dart';
import 'package:doctor_app/Futcher/ui/screens/splash_screan.dart';
import 'package:flutter/material.dart';

class PageSwip extends StatefulWidget {
  const PageSwip({super.key});

  @override
  State<PageSwip> createState() => _PageSwipState();
}

class _PageSwipState extends State<PageSwip> {

  final PageController pageController = PageController(initialPage: 0) ; 

  @override 

  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController, 
      children: [
        SplashScrean() , 
        OnboardingScreen() , 
        
      ],
    );
  }
}