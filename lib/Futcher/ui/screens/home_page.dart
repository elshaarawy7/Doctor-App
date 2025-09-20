import 'package:doctor_app/Futcher/ui/widgets/Recommendation%20Doctor.dart';
import 'package:doctor_app/Futcher/ui/widgets/doctor_speciality_item.dart';
import 'package:doctor_app/core/util/app_router.dart';
import 'package:doctor_app/core/util/styles/color.app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Omar!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "How Are you Today?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                Image.asset("assets/home_page/Notification.png"),
              ],
            ),

            SizedBox(height: 20),

            Image.asset(
              "assets/home_page/Banner.png",
              width: 400,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctor Speciality",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(
                  onPressed: () {
                    context.go(AppRouter.doctor_Speciality) ;
                  },
                 child: Text("see all",
                  style: TextStyle(color: Color_app.blue, fontSize: 18),
                ),) ,
              ],
            ),

            SizedBox(height: 10),
            Expanded(child: DoctorSpecialityItem()),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommendation Doctor",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "see all",
                  style: TextStyle(
                    color: Color_app.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            SizedBox(height: 15), 

            Recommendation_doctor(
              image: 'assets/home_page/Image.png', 
              name: "Dr. Randy Wigham",
            ) , 

            SizedBox(height: 10,) ,
            Recommendation_doctor(
              image: 'assets/home_page/Image (1).png', 
              name: "Dr. Ahmed hassan",
            ) , 

            SizedBox(height: 10,) ,
          ],
        ),
      ),
    );
  }
}
