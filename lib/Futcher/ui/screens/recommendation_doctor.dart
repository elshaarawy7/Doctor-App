import 'package:doctor_app/Futcher/ui/widgets/Recommendation%20Doctor.dart';
import 'package:doctor_app/Futcher/ui/widgets/custem_text_filed.dart';
import 'package:doctor_app/core/util/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.go(AppRouter.home_page) ;
          }, 
          icon: Icon(Icons.arrow_back_ios),
        ), 

        title: Text("Recommendation Doctor" , style: TextStyle(
          color: Colors.black , 
          fontSize: 20 , 
          fontWeight: FontWeight.bold , 
        ),), 
        centerTitle: true,
      ), 
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 30,) , 
            CustemTextFiled(
              hintText: "search", 
              obscureText: false,
              icon: Icons.search, 
            ) , 

            SizedBox(height: 20,) , 

            Recommendation_doctor(
              image: 'assets/home_page/Image.png', 
              name: "Dr. Randy Wigham",
            ) , 

            SizedBox(height: 10,) ,
            Recommendation_doctor(
              image: 'assets/home_page/Image (1).png', 
              name: "Dr. Ahmed hassan",
            ) , 

            Recommendation_doctor(
              image: 'assets/home_page/Rectangle 2495.png', 
              name: 'Dr. Randy Wigham',
            ) ,  

             Recommendation_doctor(
              image: 'assets/home_page/Image (2).png', 
              name: 'Dr. Randy Wigham',
            ) ,

             Recommendation_doctor(
              image: 'assets/home_page/nurse.jpeg', 
              name: 'Dr. Randy Wigham',
            ) ,


          ],
        ),
      ),
    );
  }
}