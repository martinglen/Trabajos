import 'package:flutter/material.dart';

import '../screen.dart';


class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes ={
    'home':(BuildContext context)=> const HomeScreen(),
    'remanente':(BuildContext context)=> const Remanente(),
    'organigrama':(BuildContext context)=> const Organigrama(),
    'nosotros':(BuildContext context)=> const NosotrosUno(),
    'login':(BuildContext context)=> const Login(),
    'contacto':(BuildContext context)=> const Contacto(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const ErrorScreen(),
    );
  }
}
