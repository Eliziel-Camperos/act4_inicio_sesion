import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      darkTheme: ThemeData(colorScheme: ColorScheme.dark(), useMaterial3: true),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
