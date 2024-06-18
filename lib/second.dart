import 'package:flutter/material.dart';
import 'package:flutter_application_7/model/producto.dart';

class SecondScreen extends StatelessWidget {
  final Producto producto;

  const SecondScreen({Key? key, required this.producto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(producto.nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                    'Product Details',
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(producto.img), // Usa AssetImage
                    radius: 46,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nombre',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(producto.nombre),
                    const Divider(
                      color: Colors.blueGrey,
                      thickness: 2,
                    ),
                    const Text(
                      'Categoría',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(producto.categoria),
                    const Divider(
                      color: Colors.blueGrey,
                      thickness: 2,
                    ),
                    const Text(
                      'Proveedor',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(producto.proveedor),
                    const Divider(
                      color: Colors.blueGrey,
                      thickness: 2,
                    ),
                    const Text(
                      'Precio',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text('\$${producto.precio.toStringAsFixed(2)}'),
                    const Divider(
                      color: Colors.blueGrey,
                      thickness: 2,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Cantidad',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text('${producto.cantidad} unidades'),
                    const Divider(
                      color: Colors.blueGrey,
                      thickness: 2,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
