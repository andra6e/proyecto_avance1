// lib/main.dart

import 'package:flutter/material.dart';
import 'login_page.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestor de Registros de Vehículos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, 
      home: LoginPage(),
    );
  }
}
