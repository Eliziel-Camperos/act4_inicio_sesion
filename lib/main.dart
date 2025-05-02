import 'package:act4logincamperos/regi.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eli-Comics',
        initialRoute: '/login', // Ruta inicial
        routes: {
          '/login': (context) => const Login(), // Pantalla de login
          '/regi': (context) => const Registro(), // Pantalla de registro
        });
  }
}
