import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack con 3 Propiedades",
            style: TextStyle(color: Color(0xff000000)),
          ),
          backgroundColor: Color(0xff8adeff), // Color azul claro para el AppBar
          elevation: 10, // Sombra en el AppBar
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Stack(
            // Propiedad 1: Alineación de los hijos dentro del Stack
            alignment: Alignment.center, // Alinea los hijos en el centro

            // Propiedad 2: Comportamiento de recorte (clip)
            clipBehavior:
                Clip.none, // Permite que los hijos se desborden del Stack

            // Propiedad 3: Lista de hijos (widgets) dentro del Stack
            children: <Widget>[
              // Fondo con un Container
              Container(
                width: 200,
                height: 200,
                color: Color(0xff3975a8),
              ),

              // Texto en la parte superior
              Positioned(
                top: 10,
                child: Text(
                  'Texto arriba',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),

              // Texto en el centro
              Text(
                'Texto centro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Texto en la parte inferior
              Positioned(
                bottom: 10,
                child: Text(
                  'Texto abajo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
