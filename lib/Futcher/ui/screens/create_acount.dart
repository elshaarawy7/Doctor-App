import 'package:doctor_app/Futcher/ui/widgets/custem_divider.dart';
import 'package:doctor_app/Futcher/ui/widgets/custem_item_scoil.dart';
import 'package:doctor_app/Futcher/ui/widgets/custem_text_filed.dart';
import 'package:doctor_app/Futcher/ui/widgets/my_batton.dart';
import 'package:doctor_app/core/util/app_router.dart';
import 'package:doctor_app/core/util/styles/color.app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateAcount extends StatefulWidget {
  const CreateAcount({super.key});

  @override
  State<CreateAcount> createState() => _CreateAcountState();
}

class _CreateAcountState extends State<CreateAcount> {
    bool isRememberMe = false;

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
        
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Create acount",
                    style: TextStyle(
                      color: Color_app.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
        
                SizedBox(height: 50),
        
                CustemTextFiled(
                  hintText: "Email",
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your Email";
                    }
                  },
                ),
        
                SizedBox(height: 10),
        
                CustemTextFiled(
                  hintText: "password",
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your password";
                    } else if (value.length > 6) {
                      return "Password must be at least 6 characters";
                    }
                  },
                ),
        
                SizedBox(height: 10), 

                CustemTextFiled(
                  hintText: "phone number",
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your password";
                    } else if (value.length > 6) {
                      return "Password must be at least 6 characters";
                    }
                  },
                ),
        
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isRememberMe = !isRememberMe;
                        });
                      },
                      icon: Icon(
                        isRememberMe
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: Colors.grey,
                      ),
                    ),
        
                    Text(
                      "Remember me",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
        
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        context.go(AppRouter.forget_password) ;
                      },
                    child:  Text("Forget Password",
                      style: TextStyle(color: Color_app.blue),
                    ),) ,
                  ],
                ),
        
                SizedBox(height: 20),
        
                MyBatton(
                  text: 'Create Account',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {}
                  },
                ),
        
                SizedBox(height: 20),
        
                CustemDivider(),
        
                SizedBox(height: 20),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustemItemScoil(
                      image: 'assets/scoile/Login alternative (1).png',
                    ),
                    SizedBox(width: 30),
                    CustemItemScoil(image: 'assets/scoile/Login alternative.png'),
                    SizedBox(width: 30),
                    CustemItemScoil(image: 'assets/scoile/Logo.png'),
                  ],
                ),
        
                SizedBox(height: 20),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account yet?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
        
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sing UP",
                        style: TextStyle(
                          color: Color_app.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}