import 'package:flutter/material.dart';
import 'PaginaCuerpo.dart'; 
class Organigrama extends StatelessWidget {
  const Organigrama({super.key});

  @override
  Widget build(BuildContext context) {
   return PaginaCuerpo(
      title: 'Organigrama', 
         body: Stack(
        children: [
          
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('imagenes/ORGANIGRAMA_2023_D.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
         ]
   )
   )  ;  
  }
}
