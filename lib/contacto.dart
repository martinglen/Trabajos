import 'package:flutter/material.dart';
import 'PaginaCuerpo.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginaCuerpo(
      title: 'Contacto',
      body: Stack(
        children: [
        /*  Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('imagenes/remanente_banner.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),*/
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Consultas, reclamos o sugerencias',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Escríbanos sus dudas o consultas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        // Campo de texto para el Rut
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Rut',
                            border: OutlineInputBorder(),
                          ),
                          maxLength: 12,
                        ),
                        const SizedBox(height: 16),
                        // Campo de texto para el Nombre
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nombre',
                            border: OutlineInputBorder(),
                          ),
                          maxLength: 150,
                        ),
                        const SizedBox(height: 16),
                        // Selector de tipo de consulta
                        DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'Seleccione tipo de consulta',
                            border: OutlineInputBorder(),
                          ),
                          items: const [
                            DropdownMenuItem(value: '', child: Text('Seleccione opción')),
                            DropdownMenuItem(value: '1', child: Text('Consultas')),
                            DropdownMenuItem(value: '2', child: Text('Sugerencia')),
                            DropdownMenuItem(value: '3', child: Text('Reclamo')),
                            DropdownMenuItem(value: '4', child: Text('Felicitaciones')),
                            DropdownMenuItem(value: '9999', child: Text('Quiero ser socio')),
                          ],
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 16),
                        // Campo de texto para el Correo
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Correo',
                            border: OutlineInputBorder(),
                          ),
                          maxLength: 150,
                        ),
                        const SizedBox(height: 16),
                        // Campo de texto para el Teléfono
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Teléfono',
                            border: OutlineInputBorder(),
                          ),
                          maxLength: 9,
                        ),
                        const SizedBox(height: 16),
                        // Campo de texto para el Mensaje
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Mensaje',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 3,
                          maxLength: 500,
                        ),
                        const SizedBox(height: 20),
                        // Botón de Enviar
                        ElevatedButton(
                          onPressed: () {
                            // Acción al enviar el formulario
                          },
                          child: const Text('Enviar'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Información de contacto
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.business, color: Colors.orange),
                        title: Text('Horario de Atención Oficinas:'),
                        subtitle: Text('Lunes a Viernes 9:00 a 14:00 y 15:00 a 17:45hrs.'),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.orange),
                        title: Text('Casa Matriz:'),
                        subtitle: Text('Av. Lib. Bernardo O\'Higgins Nº2274, Santiago, Región Metropolitana'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone, color: Colors.orange),
                        title: Text('Teléfono:'),
                        subtitle: Text('22 692 4000\nHorario de Contact Center: Lunes a Viernes 9:00 a 14:00 y 15:00 a 17:45hrs.'),
                      ),
                      ListTile(
                        leading: Icon(Icons.email, color: Colors.orange),
                        title: Text('Correo Electrónico:'),
                        subtitle: Text('contactos@capual.cl'),
                      ),
                    ],
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
