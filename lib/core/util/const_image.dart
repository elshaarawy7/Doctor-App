import 'package:doctor_app/core/util/Speciality.dart';

abstract class ConstImage {
  static final  String Logo = 'assets/Frame 1000005357.png' ;
  static final String background_logo = 'assets/Group.png' ;
  static const String basePath = "assets/home_page/";


 static List<Speciality> all = [
   
    Speciality(image: "${basePath}Brain 1.png", title: "Neurology"),
    Speciality(image: "${basePath}Iamge.png", title: "General"),
    Speciality(image: "${basePath}Kidneys 1.png", title: "Urology"),
    Speciality(image: "${basePath}Man Doctor Europe ....png", title: "Doctor"),
  ];
}