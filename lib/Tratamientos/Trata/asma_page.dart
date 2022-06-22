import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AsmaScreen extends StatelessWidget {
  const AsmaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asma', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/asma_uno.jpg'),
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
                '¿Cómo tratar el Asma?',
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
                '1. Hierva 30 hojas de eucalipto y 10 g de tomillo en 2 litros de agua durante 20 minutos. Beba 1 vaso por la mañana y por la noche.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/asma_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '2. Aplasta 8 rizomas de jengibre, guárdalo en un frasco que contenga el equivalente de su volumen de miel. Lame por la mañana y por la noche.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/asma_tres.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. El aloe vera ayuda a aliviar el exceso de moco que obstruye los bronquios. En uso interno, el jugo de aloe estabilizado alivia a los asmáticos y puede curar la bronquitis crónica, sin causar efectos secundarios. Simplemente corte las hojas de aloe vera y póngalas en el agua, espere al menos 12 horas y comience a beber esta agua durante todo el día. Al mismo tiempo, las hojas de aloe vera deben hervirse en agua y luego inhibirse con vapor durante al menos 15 ollas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/asma_cuatro.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Hierva la planta de Euphorbia hirta en agua y beba esta porción 3 veces al día para tratar la enfermedad.',
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
