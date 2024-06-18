import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_7/model/producto.dart';
import 'package:flutter_application_7/second.dart';

class TapT extends StatelessWidget {
  const TapT({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Número de pestañas
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Examen Movil 1'),
          backgroundColor: const Color(0xFF40E0D0), // Celeste turquesa
          bottom: TabBar(
            tabs: [
              Tab(text: 'Inicio'),
              Tab(text: 'Productos'),
              Tab(text: 'Galeria'),
            ],
            labelColor: Colors.white, // Color del texto de las pestañas
            indicatorColor: Colors.white, // Color del indicador de pestañas
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¡Bienvenido!",
                    style: TextStyle(
                      fontSize:
                          40.0, // Cambia este valor para hacer el texto más grande
                    ),
                  ),
                  SizedBox(height: 20), // Espacio entre los textos
                  Text(
                    "Programar en Flutter es como pintar con código, creando interfaces hermosas y funcionales que cobran vida con cada línea de código",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0, // Tamaño de fuente del segundo texto
                    ),
                  ),
                ],
              ),
            ),
            // sehunda pantalla
            ListView.builder(
              itemCount: productos.length,
              itemBuilder: (context, index) {
                final producto = productos[index];
                return ListTile(
                  title: Text(producto.nombre),
                  subtitle: Text(
                      'Precio: \$${producto.precio}, Cantidad: ${producto.cantidad}'),
                );
              },
            ),

            // tercera pantalla
            ListView.builder(
              itemCount: productos.length,
              itemBuilder: (context, index) {
                final producto = productos[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(producto.img),
                    title: Text(producto.nombre),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Categoria: ${producto.categoria}'),
                        Text('Proveedor: ${producto.proveedor}'),
                        Text('Precio: \$${producto.precio}'),
                        Text('Cantidad: ${producto.cantidad}'),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(producto: producto),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
