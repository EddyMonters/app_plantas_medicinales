import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CompresasPage extends StatelessWidget {
  const CompresasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Compresas',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/compresas_0.jpg'),
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
                '¿Qué son las Compresas o fomento?',
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
                'Consiste en una cocción de plantas a razón de un gramo por cada 100 mililitros de agua y, antes de que el cocimiento se enfríe, se moja un lienzo y se aplica en la parte afectada.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/compresas_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'La operación se repite de cinco a siete veces con la misma cocción, la cual se calienta tantas veces como sea necesario.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/cocimiento_1.jpg',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Se usa para que los principios activos sean absorbidos por la piel para combatir síntomas molestos en músculos y articulaciones, activando reacciones nerviosas, térmicas y circulatorias.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/compresas_3.jpg',
                fit: BoxFit.cover,
                height: 180,
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
