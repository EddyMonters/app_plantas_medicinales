import 'package:flutter/material.dart';

class GripeScreen extends StatelessWidget {
  const GripeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gripe', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/gripe_0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              '¿Cómo tratar la Gripe?',
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
              '1. Hervir 15 hojas de eucalipto y 15 hojas de guayaba durante 10 a 15 minutos, luego cocinar al vapor y beber 1/2 vaso dos veces al día para el niño y 1 vaso Dos veces al día para adultos durante una semana.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/asma_dos.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2. Picar finamente un diente de ajo, poner el ajo en una cucharadita y tragar el ajo, seguido de medio vaso de agua. Los síntomas desaparecerán en unas pocas horas.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/asma_dos.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_cabeza_2.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
