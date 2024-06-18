class Producto {
  final String id;
  final String nombre;
  final String categoria;
  final String proveedor;
  final double precio;
  final String img;
  final int cantidad;

  Producto(this.id, this.nombre, this.categoria, this.proveedor, this.precio,
      this.img, this.cantidad);
}

final List<Producto> productos = [
  Producto('001AOQ', 'CHOCOLATE', 'Dulces', 'Proveedor A', 2.50,
      'lib/assets/img/chocolate.png', 150),
  Producto('002AOQ', 'GALLETA', 'Snacks', 'Proveedor B', 1.20,
      'lib/assets/img/galletas.png', 300),
  Producto('003AOQ', 'CAFÉ', 'Bebidas', 'Proveedor C', 4.30,
      'lib/assets/img/CAFE.jpeg', 100),
  Producto('004AOQ', 'TÉ', 'Bebidas', 'Proveedor D', 2.70,
      'lib/assets/img/te.jpeg', 180),
  Producto('005AOQ', 'AZÚCAR', 'Básicos', 'Proveedor E', 1.80,
      'lib/assets/img/AZUCAR.jpeg', 350),
  Producto('006AOQ', 'SAL', 'Básicos', 'Proveedor A', 0.99,
      'lib/assets/img/SAL.jpeg', 450),
  Producto('007AOQ', 'HARINA', 'Básicos', 'Proveedor B', 1.40,
      'lib/assets/img/HARINA.jpeg', 280),
  Producto('008AOQ', 'LECHE', 'Lácteos', 'Proveedor C', 1.10,
      'lib/assets/img/LECHE.jpeg', 550),
  Producto('009AOQ', 'YOGURT', 'Lácteos', 'Proveedor D', 1.90,
      'lib/assets/img/YOGURT.jpeg', 200),
  Producto('010AOQ', 'QUESO', 'Lácteos', 'Proveedor E', 3.00,
      'lib/assets/img/QUESO.jpeg', 130),
  Producto('011AOQ', 'PAN', 'Básicos', 'Proveedor A', 1.50,
      'lib/assets/img/PAN.jpeg', 220),
  Producto('012AOQ', 'MANTEQUILLA', 'Lácteos', 'Proveedor B', 2.60,
      'lib/assets/img/MANTEQUILLA.jpeg', 160),
  Producto('013AOQ', 'HUEVOS', 'Básicos', 'Proveedor C', 3.20,
      'lib/assets/img/HUEVOS.jpeg', 310),
  Producto('014AOQ', 'ARROZ', 'Básicos', 'Proveedor D', 2.10,
      'lib/assets/img/ARROZ.jpeg', 420),
  Producto('015AOQ', 'PASTA', 'Básicos', 'Proveedor E', 1.35,
      'lib/assets/img/PASTA.jpeg', 270),
  Producto('016AOQ', 'ACEITE', 'Básicos', 'Proveedor A', 3.60,
      'lib/assets/img/ACEITE.png', 110),
  Producto('017AOQ', 'VINAGRE', 'Básicos', 'Proveedor B', 1.55,
      'lib/assets/img/VINAGRE.jpeg', 190),
  Producto('018AOQ', 'SALSA', 'Condimentos', 'Proveedor C', 2.00,
      'lib/assets/img/SALSA.png', 160),
  Producto('019AOQ', 'ATÚN', 'Conservas', 'Proveedor D', 2.50,
      'lib/assets/img/atun.jpeg', 200),
  Producto('020AOQ', 'SARDINA', 'Conservas', 'Proveedor E', 2.30,
      'lib/assets/img/SARDINA.jpeg', 100),
];
