import 'package:flutter/material.dart';

class ReviewDoctor extends StatelessWidget {
  const ReviewDoctor({super.key, required this.image, required this.text});
  final String image ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(image),

            SizedBox(width: 10),
            Text(
              "Jane Cooper",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),

            Text(
              "Today",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ), 
        SizedBox(height: 10,) , 

        Row(
          children: List.generate(
            5  , (index) => Icon(Icons.star , color: Colors.amber , size: 20,)
            
          )
        ) , 

        SizedBox(height: 10,) , 

        Text(text ,
          style: TextStyle(color: Colors.black, fontSize: 14),
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
