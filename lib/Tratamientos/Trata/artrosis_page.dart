import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ArtrosisScreen extends StatelessWidget {
  const ArtrosisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/artrosis/artrosis_uno.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        title: const Text('Artrosis', style: TextStyle(fontSize: 30)),
      ),
      body: FadeInRight(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                '¿Cómo tratar la Artrosis (dolor en las articulaciones)?',
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
                '1. Para reducir el dolor, coma toronja y elimine los siguientes alimentos de la dieta: carnes rojas, naranjas y limones.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/artrosis/artrosis_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const Text(
                '2. Hierva las hojas de repollo y déjelos calentar, aplique hojas tibias en sus manos o articulaciones, utilizando una toalla pequeña.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Tome una caja de leche promedio, un puñado de ajo pelado y cortado, luego 1 litro de agua. Póngalo en una olla y cocine a fuego lento durante 25 minutos. Beba 1 vaso por la mañana y por la noche. Infundir 11 gramos de batidos de maíz secados en 1 litro de agua caliente, esta mezcla causa diuresis eliminando toxinas, beber un vaso por la mañana por la noche.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/artrosis/artrosis_tres.jpg',
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
