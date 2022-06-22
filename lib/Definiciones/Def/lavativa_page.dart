import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LavativaPage extends StatelessWidget {
  const LavativaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lavativa', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/estrinimiento_1.jpg'),
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
                '¿Cómo es la Lavativa?',
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
                'Este sistema consiste en introducir líquidos por vía rectal, pudiendo ser agua para nivelar la temperatura interna, o bien, cocimiento de plantas medicinales para combatir cierta enfermedad o síntoma.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/assets/tratamientosimg/lavativa_1.jpg',
                  fit: BoxFit.contain,
                  //width: 450,
                  height: 300),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Su aplicación es con intervalos de descanso y de ingreso del líquido.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Se utiliza de un cuarto a un litro de agua por tratamiento.',
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
