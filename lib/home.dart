import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showInProcess(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Función en desarrollo")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eli-Comics - Inicio"),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (_) => _showInProcess(context),
            itemBuilder: (BuildContext context) {
              return [
                'Inicio',
                'Comics',
                'Empleados',
                'Tienda',
                'Ventas',
                'Inventario',
                'Devoluciones',
                'Facturas'
              ].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 200),
            const SizedBox(height: 30),
            const Text(
              'Bienvenido a Eli-Comics',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('Explorar Catálogo'),
            ),
          ],
        ),
      ),
    );
  }
}
