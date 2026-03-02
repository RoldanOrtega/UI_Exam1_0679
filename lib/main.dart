import 'package:flutter/material.dart';
import 'mispantallas/inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Wattpad Reader',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color(0xFF0F0F0F),
      primaryColor: const Color(0xFFFF5000),
    ),
    // RUTAS NOMBRADAS: No cambies estos nombres
    initialRoute: '/',
    routes: {
      '/': (context) => const Inicio(),
      '/pantalla2': (context) => const Pantalla2(),
      '/pantalla3': (context) => const Pantalla3(),
    },
  ));
}