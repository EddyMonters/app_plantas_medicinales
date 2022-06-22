import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FrigidezScreen extends StatelessWidget {
  const FrigidezScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frigidez ', style: TextStyle(fontSize: 30)),
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
                '¿Cómo tratar la Frigidez?',
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
                '1. Coma 2 cucharadas de miel antes de tener relaciones sexuales o unge su vagina con miel.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_cuatro.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Hierva el perejil y las hojas de albahaca, sirva la infusión en un vaso, agregue unas gotas de limón, agregue una cucharada de miel y beba esta agua 30 minutos antes de tener relaciones sexuales. Le prometo que darías testimonios.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/frigidez_0.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '3. Si padece problemas de debilidad sexual o frigidez, el clavo debe ser masticado, es afrodisíaco, permite prolongar el efecto de erección en los hombres gracias a sus propiedades tónicas y vasodilatadoras y en la mujer, permite tener el deseo sexual. Permite mantener el apetito sexual entre las dos parejas',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_muelas_5.jpg',
                fit: BoxFit.cover,
                height: 200,
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
