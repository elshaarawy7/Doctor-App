import 'package:doctor_app/Futcher/ui/widgets/my_batton.dart';
import 'package:doctor_app/core/util/app_router.dart';
import 'package:doctor_app/core/util/const_image.dart';
import 'package:doctor_app/core/util/styles/color.app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5),
            Image.asset(ConstImage.Logo, height: 200, width: 200),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(ConstImage.background_logo),
                Image.asset("assets/doctor.png"),
                Positioned(
                  top: 270,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset("assets/Linear Effect.png"),
                ),

                Positioned(
                  bottom: 120,
                  child: Text(
                    "Best Doctor",
                    style: TextStyle(
                      color: Color_app.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 80,
                  child: Text(
                    "Appointment App",
                    style: TextStyle(
                      color: Color_app.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 30,
                  child: Text(
                    "Manage and schedule all of your medical appointments easily ",
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Text("with Docdoc to get a new experience."),
                ),
              ],
            ),

            SizedBox(height: 30),

            MyBatton(
              onPressed: () {

               context.go(AppRouter.KSingIn);

              }, text: "Get Started"),
          ],
        ),
      ),
    );
  }
}
