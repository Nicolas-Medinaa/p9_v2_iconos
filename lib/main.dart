import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nicolas Medina"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xff69d1f1),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nicolas Medina Zubia 22308051281259",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff573ec6),
                  )),
              SizedBox(height: 100),
              // Primera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconWithLabel(
                    icon: Icons.star,
                    label: 'Estrella',
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 20), // Espacio entre iconos
                  IconWithLabel(
                    icon: Icons.favorite,
                    label: 'Corazón',
                    color: Colors.red,
                  ),
                  SizedBox(width: 20),
                  IconWithLabel(
                    icon: Icons.person,
                    label: 'Perfil',
                    color: Color(0xffd99792),
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre filas
              // Segunda fila
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconWithLabel(
                    icon: Icons.thumb_up,
                    label: 'Pulgar arriba',
                    color: Colors.blue,
                  ),
                  SizedBox(width: 20),
                  IconWithLabel(
                    icon: Icons.settings,
                    label: 'Configuracion',
                    color: Color(0xfff81000),
                  ),
                  SizedBox(width: 20),
                  IconWithLabel(
                    icon: Icons.home,
                    label: 'Casa',
                    color: Color(0xff4ab05b),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} //fin clase mis iconos

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  IconWithLabel({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
          color: color,
        ),
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: color,
          ),
        ),
      ],
    );
  }
}
