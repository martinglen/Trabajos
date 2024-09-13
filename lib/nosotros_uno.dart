import 'package:flutter/material.dart';
import 'PaginaCuerpo.dart'; // Importa el widget base

class NosotrosUno extends StatelessWidget {
  const NosotrosUno({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginaCuerpo(
      title: 'Nosotros', // Título que aparece en la AppBar
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('imagenes/banner3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
         
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
         
          SingleChildScrollView(
            child: Column(
              children: [
         
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Conozca sobre nosotros',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.white,
                        indent: 50,
                        endIndent: 50,
                        thickness: 2,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Le presentamos quiénes somos, nuestra misión, visión y un poco de nuestra historia.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
             Container(
                  color: const Color.fromARGB(255, 2, 92, 110),
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: [
                      Text(
                        'Quiénes Somos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Capual es una institución financiera sin fines de lucro, es una Cooperativa. El hecho de ser una Cooperativa implica que su génesis se sitúa en el apoyo mutuo entre los Socios, quienes forman parte de la Cooperativa y a la vez participan de la propiedad de ésta. El apoyo a los Socios se realiza, en el caso de Capual, a través de los créditos que la Cooperativa administra a los Socios que lo requieran, a cambio de un interés sumamente favorable, que se convierte además en ganancia para la Cooperativa y para sus Socios. Además la Cooperativa entrega importantes beneficios sociales a sus Socios, que refuerzan la presencia de Capual en el bienestar de ellos.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
