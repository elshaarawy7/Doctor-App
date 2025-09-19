import 'package:flutter/material.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({super.key});

  @override
  Widget build(BuildContext context) {
    // الصور + الاسماء
    final List<Map<String, String>> specialities = [
      {
        "image": "assets/home_page/Brain 1.png",
        "title": "Neurology",
      },
      {
        "image": "assets/home_page/Man Doctor Europe 1.png",
        "title": "General",
      },
      {
        "image": "assets/home_page/Iamge.png",
        "title": "Pediatric",
      },
      {
        "image": "assets/home_page/Kidneys 1.png",
        "title": "Radiology",
      },
    ];

    return SizedBox(
  height: 120,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: specialities.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(item["image"]!),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item["title"]!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }).toList(),
  ),
);

  }
}
