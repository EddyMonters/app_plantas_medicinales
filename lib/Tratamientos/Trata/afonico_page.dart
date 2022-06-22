import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AfonicoScreen extends StatelessWidget {
  const AfonicoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Afónico',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/afonico/afonico_uno.jpg'),
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
                '¿Cómo tratar la pérdida de voz?',
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
                '1. Cocine 3 zanahorias en 1 litro de agua durante 15 minutos, rílelas completamente, gire la pulpa en un paño para extraer el jugo, agregue 2 vasos de agua y beba 1 vaso caliente 5 a 6 veces al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/afonico/afonico_dos.jpg',
                fit: BoxFit.contain,
                height: 230,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Hervir el equivalente a una taza grande de agua. Sumerge siete dientes de ajo y una o dos ramas de canela en el agua. Agregue el jugo de dos limones exprimidos raspando también la pulpa blanca con una cuchara. Dejar macerar cubriendo con un plato durante 10 minutos. Filtrar todo con un colador y endulzar, por ejemplo, agregando una cucharada de miel, antes de beber.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/afonico/afonico_tres.jpg',
                fit: BoxFit.contain,
                height: 230,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'lib/assets/afonico/afonico_cuatro.jpg',
                fit: BoxFit.contain,
                height: 230,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
