import 'package:doctor_app/Futcher/ui/screens/review_doctor.dart';
import 'package:doctor_app/Futcher/ui/widgets/Recommendation%20Doctor.dart';
import 'package:doctor_app/Futcher/ui/widgets/doctor_tab_view.dart';
import 'package:doctor_app/Futcher/ui/widgets/give_rate_bottom_sheet.dart';
import 'package:doctor_app/core/util/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetilesDoctoer extends StatelessWidget {
  const DetilesDoctoer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // About - Location - Reviews
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              context.go(AppRouter.home_page);
            },
          ),
          title: const Text(
            "Dr Randy Wigham",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Recommendation_doctor(
                image: 'assets/home_page/Image.png',
                name: "Dr. Randy Wigham",
              ),
              const SizedBox(height: 20),

              /// 👇 هنا مكان التاب بار
              const TabBar(
                indicatorColor: Colors.blue,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "About"),
                  Tab(text: "Location"),
                  Tab(text: "Reviews"),
                ],
              ),
              SizedBox(height: 20),

              /// 👇 هنا مكان محتوى كل تاب
              DoctorTabView(),

              SizedBox(height: 20),

              /// زرار تحت
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      isScrollControlled: true,
                      builder: (context) => const GiveRateBottomSheet(),
                    );
                  },

                  child: const Text(
                    "Make An Appointment",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
