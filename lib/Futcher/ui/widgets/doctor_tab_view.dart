import 'package:doctor_app/Futcher/ui/screens/review_doctor.dart';
import 'package:flutter/material.dart';
class DoctorTabView extends StatelessWidget {
  const DoctorTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          // About Tab
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "About me",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  "Dr. Jenny Watson is the top most Immunologists specialist "
                  "in Christ Hospital at London. She achieved several awards "
                  "for her wonderful contribution in medical field. She is "
                  "available for private consultation.",
                ),
                SizedBox(height: 16),
                Text("Working Time",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 8),
                Text("Monday - Friday, 08.00 AM - 20.00 PM"),
                SizedBox(height: 16),
                Text("STR",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 8),
                Text("4726482464"),
                SizedBox(height: 16),
                Text("Experience",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 8),
                Text("RSPAD Gatot Soebroto\n2017 - sekarang"),
              ],
            ),
          ),

          // Location Tab
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text("Practice Place",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              const Text("Cairo, Egypt"),
              const SizedBox(height: 20),
              const Text("Location Map",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: Image.asset(
                  "assets/home_page/Map.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          // Reviews Tab
          Column(
            children: const [
              ReviewDoctor(
                image: 'assets/home_page/Rectangle.png',
                text:
                    "As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.",
              ),
              SizedBox(height: 10),
              ReviewDoctor(
                image: 'assets/home_page/Rectangle 318.png',
                text:
                    "As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.",
              ),
            ],
          )
        ],
      ),
    );
  }
}
