import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BronquitisScreen extends StatelessWidget {
  const BronquitisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bronquitis', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/bronquitis_uno.jpg'),
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
                '¿Cómo tratar la Bronquitis?',
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
                '1. Tome un puñado de hojas de eucalipto y hojas Messap: hierva durante 1 hora en 1 litro de agua, filtre caliente, agregue 6 dulces alcohólicos, beba 2 cucharaditas dos veces por día por una semana.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/bronquitis_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. La cataplasma de mostaza es un remedio eficaz y antiguo para la congestión pulmonar, la tos, la bronquitis o la neumonía. Prepare la cataplasma de mostaza con un poco de agua tibia y aplíquela en la espalda o en el pecho, deje que la cataplasma funcione durante 20 minutos.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/bronquitis_tres.jpg',
                      fit: BoxFit.contain,
                      height: 180,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/bronquitis_seis.jpg',
                      fit: BoxFit.contain,
                      height: 180,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Aplasta las hojas de guayaba, enróllalas en una barra de cigarrillos, fuma 3 barras al día durante 10 dias.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/bronquitis_cinco.jpg',
                      fit: BoxFit.contain,
                      height: 180,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/bronquitis_cuatro.jpg',
                      fit: BoxFit.contain,
                      height: 180,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Prepara jugo de zanahoria puro y tómate una bebida por la mañana y por la noche.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '5. Una cucharada de jugo de cebolla + 01 cucharada de miel, consumir tres veces al día hasta que sane',
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
