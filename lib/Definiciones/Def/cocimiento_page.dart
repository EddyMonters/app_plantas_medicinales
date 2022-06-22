import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CocimientoPage extends StatelessWidget {
  const CocimientoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocimiento', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/cocimiento_3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInRight(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                '¿Cómo es el Cocimiento?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ), // para agregar un pequeño espacio entre parrafos
              const Text(
                'Este procedimiento consiste en hervir a fuego lento las partes de la planta que no pierden sus propiedades curativas por el calor, como cortezas, raíces, madera o ramas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/cocimiento_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 200,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                ' Se mezcla un gramo del producto con una taza de agua. Se pone a fuego lento de dos a tres minutos, para hojas, y de cinco a diez minutos para cortezas, ramas o raíces.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/cocimiento_0.jpg',
                fit: BoxFit.cover,
                height: 280,
              )
            ],
          ),
        ),
      ),
    );
  }
}
