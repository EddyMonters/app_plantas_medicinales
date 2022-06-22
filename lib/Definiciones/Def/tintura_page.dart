import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TinturaPage extends StatelessWidget {
  const TinturaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tintura', style: TextStyle(fontSize: 30)),
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
                '¿Cómo es la Tintura?',
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
                'Es la maceración de plantas en alcohol de 96° al 100%.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/tintura_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 350,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Se depositan 10 gramos de planta por 100 mililitros de alcohol.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/cataplasma_3.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Se deja reposar en un recipiente cerrado durante 30 días, moviendo el recipiente diariamente.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/tintura_0.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'La administración del producto es mediante gotas diluidas en agua.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
