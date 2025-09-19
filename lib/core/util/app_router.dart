import 'package:doctor_app/Futcher/ui/screens/sin_in.dart';
import 'package:doctor_app/page_swip.dart';
import 'package:go_router/go_router.dart';

class AppRouter { 

  static const KPageSwip = '/pageSwip' ;
  static const KSingIn = '/SingIn' ;
  
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
    ]
  );
} 