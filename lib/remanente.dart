import 'package:flutter/material.dart';
import 'PaginaCuerpo.dart'; 

class Remanente extends StatelessWidget {
  const Remanente({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginaCuerpo(
      title: 'Remanente', 
      body: Stack(
        children: [
          
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('imagenes/remanente_banner.png'), 
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5), 
            ),
          ),
          
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
                  Center(
                    child: Image.asset(
                      'imagenes/remanente.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                
                  const Text(
                    'Estimados(as) Socios y Socias:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                
                  const Text(
                    'Informamos que el pago del Remanente 2023, se está realizando a partir del lunes 06 de Mayo 2024, momento en que cada Socia y Socio puede retirar o hacer uso del monto correspondiente.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                
                  const Text(
                    'Para facilitar la gestión, le entregamos las siguientes opciones como formas de pago:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '• Pago directo en Oficinas\n• Pago a través de Transferencia electrónica\n• Pago de Cuotas de Crédito\n• Depósito en Cuenta Capital',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Las siguientes Capual Express solo funcionan con modalidad de pago por transferencia:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '• Calama\n• Isla de Pascua\n• Los Andes\n• Rancagua\n• Curicó\n• Castro',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Pero, ¿Qué es el Remanente?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Las utilidades del Ejercicio Contable, posterior a los ajustes legales, genera excedentes que son conocidos como Remanente. El monto determinado como Remanente, es distribuido equitativamente entre los socios de acuerdo a sus Cuotas de Participación, permanencia y momento en que fueron realizados los aportes.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[100],
                    child: const Text(
                      'Si necesita mayor información, contáctenos al correo contactos@capual.cl o a través de nuestro Contact Center 22 692 4000.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
