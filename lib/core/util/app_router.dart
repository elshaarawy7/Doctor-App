import 'package:doctor_app/Futcher/ui/screens/create_acount.dart';
import 'package:doctor_app/Futcher/ui/screens/forget_passowrd_page.dart';
import 'package:doctor_app/Futcher/ui/screens/home_page.dart';
import 'package:doctor_app/Futcher/ui/screens/sin_in.dart';
import 'package:doctor_app/page_swip.dart';
import 'package:go_router/go_router.dart';

class AppRouter { 

  static const KPageSwip = '/pageSwip' ;
  static const KSingIn = '/SingIn' ;
  static const createAcount = '/createAcount' ;
  static const forget_password = '/forget_passowrd' ;
  static const home_page = '/HomePage' ;
  
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/' , 
        builder: (context, state) => PageSwip(),
      ) , 

      GoRoute(
        path: KSingIn  , 
        builder: (context, state) => SinIn(),
      ) ,  

      GoRoute(
        path: createAcount , 
        builder: (context, state) => CreateAcount(),
      ) , 

      GoRoute(
        path: home_page , 
        builder: (context, state) => HomePage(),
      ),


      GoRoute(
        path: forget_password , 
        builder: (context, state) => ForgetPassowrdPage(),
      )
    ]
  );
} 