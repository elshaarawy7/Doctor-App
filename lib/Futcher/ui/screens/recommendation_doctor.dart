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
      body: Column(),
    );
  }
}