import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HemorragiaScreen extends StatelessWidget {
  const HemorragiaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hemorragia', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/hemorragia_0.jpg'),
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
                '¿Cómo tratar la Hemorragia?',
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
                '1. Estire la cabeza del paciente de manera que las fosas nasales estén arriba y deje caer 4 gotas de jugo de masa (albahaca silvestre), apriételo en cada fosa nasal.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/fiebre_1.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Toma un poco de algodón, empápalo en el jugo de algodón, empuja este tampón en las fosas nasales del paciente.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
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
