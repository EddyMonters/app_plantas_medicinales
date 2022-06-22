import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LesionesSexoScreen extends StatelessWidget {
  const LesionesSexoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Lesiones en el Sexo', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/frigidez_1.jpg'),
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
                '¿Cómo tratar las Lesiones en el Sexo?',
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
                '1. Guijarro amarillo + aceite de semilla de palma, unge una vez a la hora de acostarse la apuesta infectada y lame dos veces el dedo.',
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
                      'lib/assets/tratamientosimg/guijarro.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/guijarro_1.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ],
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
