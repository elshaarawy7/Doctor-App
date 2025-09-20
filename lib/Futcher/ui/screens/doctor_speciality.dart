import 'package:doctor_app/core/util/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoctorSpeciality {
  final String title;
  final String imagePath;

  DoctorSpeciality({required this.title, required this.imagePath});
}

class DoctorSpecialityGrid extends StatelessWidget {
  DoctorSpecialityGrid({super.key});

  final List<DoctorSpeciality> items = [
    DoctorSpeciality(title: "Brain", imagePath: "assets/Doctor Speciality/Brain 1 (1).png"),
    DoctorSpeciality(title: "Frame 1", imagePath: "assets/Doctor Speciality/Frame (1).png"),
    DoctorSpeciality(title: "Frame 2", imagePath: "assets/Doctor Speciality/Frame (2).png"),
    DoctorSpeciality(title: "Frame 3", imagePath: "assets/Doctor Speciality/Frame (3).png"),
    DoctorSpeciality(title: "Frame", imagePath: "assets/Doctor Speciality/Frame.png"),
    DoctorSpeciality(title: "Group 1", imagePath: "assets/Doctor Speciality/Group (1).png"),
    DoctorSpeciality(title: "Group 2", imagePath: "assets/Doctor Speciality/Group (2).png"),
    DoctorSpeciality(title: "Group 3", imagePath: "assets/Doctor Speciality/Group (3).png"),
    DoctorSpeciality(title: "Group", imagePath: "assets/Doctor Speciality/Group.png"),
    DoctorSpeciality(title: "Image", imagePath: "assets/Doctor Speciality/Iamge (1).png"),
    DoctorSpeciality(title: "Kidneys", imagePath: "assets/Doctor Speciality/Kidneys 1 (1).png"),
    DoctorSpeciality(title: "Man Doctor", imagePath: "assets/Doctor Speciality/Man Doctor Europe 1 (1).png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios , size: 20 , color: Colors.black,), 
          onPressed: () {
            context.go(AppRouter.home_page) ;
          },
        ),
        title: const Text("Doctor Speciality") , 
        centerTitle: true,
        ), 
        
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 صور في الصف
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8, // يتحكم في الطول
        ),
        itemCount: items.length, // عندك 12 صورة
        itemBuilder: (context, index) {
          return Container(
            
            decoration: BoxDecoration(
               shape: BoxShape.circle,
                color: Colors.blue.shade50,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    height: 30 , 
                    width: 50 , 
                    items[index].imagePath,
                    fit: BoxFit.contain,
                  ), 
          
                  
                ), 
          
               
                 SizedBox(height: 0),
                Text(
                  items[index].title,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
