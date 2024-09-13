import 'package:flutter/material.dart';

class PaginaCuerpo extends StatelessWidget {
  final Widget body; 
  final String title; 

  const PaginaCuerpo({super.key, required this.body, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight:100.0,
         
title: Column(
  crossAxisAlignment: CrossAxisAlignment.center, 
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'imagenes/logo_capual_antiguo.png',
          height: 50,
        ),
      ],
    ),
    const SizedBox(height: 8), 
    Row(
      mainAxisAlignment: MainAxisAlignment.end, 
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0, 
                color: Color.fromARGB(255, 0, 0, 0), 
              ),
            ],
          ),
        ),
      ],
    ),
  ],
),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); 
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 243, 245, 247),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'imagenes/logo_capual_antiguo.png',
                    height: 50,
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushNamed(context, 'home');
              },
            ),
            ListTile(
              title: const Text('Nosotros'),
              onTap: () {
                Navigator.pushNamed(context, 'nosotros');
              },
            ),
            ListTile(
              title: const Text('Remanente'),
              onTap: () {
                Navigator.pushNamed(context, 'remanente');
              },
            ),
            ListTile(
              title: const Text('Organigrama'),
              onTap: () {
                 Navigator.pushNamed(context, 'organigrama');
              },
            ),
          ],
        ),
      ),
      body: body, 
    );
  }
}