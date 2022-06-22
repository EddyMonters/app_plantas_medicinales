import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CirrosisScreen extends StatelessWidget {
  const CirrosisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cirrosis', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/cirrosis_uno.jpg'),
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
                '¿Cómo tratar la Cirrosis?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 20,
              ), // para agregar un pequeño espacio entre parrafos
              const Text(
                '1. Bebe jugo de zanahoria fresco por la mañana hasta que se recupere.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/cirrosis_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
