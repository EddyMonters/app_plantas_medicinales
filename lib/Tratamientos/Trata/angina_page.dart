import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnginaScreen extends StatelessWidget {
  const AnginaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Angina', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/angina/angina_uno.jpg'),
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
                '¿Cómo tratar las Anginas?',
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
                '1. Ponga una pizca grande de sal en un cuarto de vaso de agua y haga gárgaras en la garganta, luego ponga en un vaso de agua una aspirina triturada y jugo de limón y beba.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/angina/angina_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Aplique hojas de col al cuello para calmar el dolor y elimine las toxinas. Haga gárgaras con jugo de col para sanar. Caliente la cebolla, muela y aplique al cuello y manténgalo.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/angina/angina_tres.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Quema el grano de la fruta negra hasta que se ponga roja, coloca este grano en un gusano, haz la gárgaras con la mitad y bebe el resto. Repite el tratamiento tres veces al día. Hervir un cuarto de litro de agua y una cucharada de miel durante 5 minutos, haciendo gárgaras en la garganta varias veces al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Corte un puñado de hojas tiernas de mango, triture un rizoma de jengibre, mezcle 2 litros de agua y añada 15 piezas de azúcar, hierva durante 15 minutos y deje que se asiente a lo largo del día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/angina/angina_cuatro.jpg',
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
