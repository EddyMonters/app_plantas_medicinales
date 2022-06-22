import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AlimentacionScreen extends StatelessWidget {
  const AlimentacionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alimentación', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/alimentacion/alimentacion_uno.jpg'),
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
                '¿Cómo tratar la alimentación durante la lactancia?',
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
                '1. Bebe dos vasos de jugo de zanahoria cada mañana.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/alimentacion/alimentacion_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Tome un puñado de albahaca y hierva en 1 litro de agua durante unos minutos, filtre y tome dos tazas al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/alimentacion/alimentacion_tres.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Es necesario consumir gran cantidad de Fenugreek. Si el uso de Fenugreek no se recomienda durante el embarazo, puede causar contracciones uterinas, sin embargo, es muy frecuente que las madres jóvenes lo utilicen durante la lactancia, especialmente durante las primeras semanas. De hecho, se sabe que la alholva estimula la lactancia y promueve el aumento de la leche.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/alimentacion/alimentacion_4.png',
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
