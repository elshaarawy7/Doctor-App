import 'package:doctor_app/Futcher/ui/widgets/custem_text_filed.dart';
import 'package:doctor_app/Futcher/ui/widgets/my_batton.dart';
import 'package:doctor_app/core/util/styles/color.app.dart';
import 'package:flutter/material.dart';

class ForgetPassowrdPage extends StatelessWidget {
  const ForgetPassowrdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 100,) ,
            Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color_app.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), 

                  Text(
                  "At our app, we take the security of your information seriously.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  ) ,  

                  SizedBox(height: 20,) , 

                  CustemTextFiled(hintText: "Email or Phone Number",
                   obscureText: false) ,
                   Spacer() ,

                   MyBatton(text: "Reset Password") , 




                   SizedBox(height: 100,) , 
          ],
        ),
      ),
    );
  }
}