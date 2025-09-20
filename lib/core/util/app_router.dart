import 'package:doctor_app/Futcher/ui/screens/create_acount.dart';
import 'package:doctor_app/Futcher/ui/screens/detiles_doctoe.dart';
import 'package:doctor_app/Futcher/ui/screens/doctor_speciality.dart';
import 'package:doctor_app/Futcher/ui/screens/forget_passowrd_page.dart';
import 'package:doctor_app/Futcher/ui/screens/home_page.dart';
import 'package:doctor_app/Futcher/ui/screens/recommendation_doctor.dart';
import 'package:doctor_app/Futcher/ui/screens/sin_in.dart';
import 'package:doctor_app/page_swip.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const KPageSwip = '/pageSwip';
  static const KSingIn = '/SingIn';
  static const createAcount = '/createAcount';
  static const forget_password = '/forget_passowrd';
  static const home_page = '/HomePage';
  static const doctor_Speciality = '/DoctorSpeciality';
  static const doctor_detils = '/DoctorDetiles';
  static const recomdation_doctor = '/RecommendationDoctor';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => PageSwip()),

      GoRoute(path: KSingIn, builder: (context, state) => SinIn()),

      GoRoute(path: createAcount, builder: (context, state) => CreateAcount()),

      GoRoute(path: home_page, builder: (context, state) => HomePage()),

      GoRoute(
        path: forget_password,
        builder: (context, state) => ForgetPassowrdPage(),
      ),

      GoRoute(
        path: doctor_Speciality,
        builder: (context, state) => DoctorSpecialityGrid(),
      ),

      GoRoute(
        path: doctor_detils,
        builder: (context, state) => DetilesDoctoer(),
      ), 

      GoRoute(
        path: recomdation_doctor , 
        builder: (context, state) => RecommendationDoctor(),
      )
    ],
  );
}
