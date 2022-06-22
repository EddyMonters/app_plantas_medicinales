import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class EstrenimientoScreen extends StatelessWidget {
  const EstrenimientoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estreñimiento', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/estrinimiento_0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInRight(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '¿Cómo tratar con el Estreñimiento?',
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
                '1. Dele el jugo de papaya al bebé, exprima la pulpa de papaya en un paño limpio y gire el paño para hacer correr el jugo. Para los adultos, consuma mucha papaya.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_cabeza_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Una sopa hecha de 1kg de zanahoria hervida durante 2 horas en un litro de agua, pasada en milenio. Beba 2 veces por la mañana con el estómago vacío y por la noche a la hora de acostarse. Vaso de adulto 1, mitad infantil. -verre.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/tratamientosimg/estrinimiento_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Decocción de hojas de piña, beber agua y comer hojas cocidas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                ' 4. Si el paciente es un bebe, dar jugo de naranja.',
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
