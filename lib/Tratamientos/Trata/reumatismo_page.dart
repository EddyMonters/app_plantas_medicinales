import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ReumatismoScreen extends StatelessWidget {
  const ReumatismoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reumatismo ', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/reumatismo.jpg'),
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
                '¿Cómo tratar el Reumatismo?',
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
                '1. Haga una cura de limón durante una semana cada mes.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_4.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '2. Masaje con aceite rojo o manteca de karité.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/reumatismo_1.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Haga ungüento de manteca de karité más pimienta para frotar las partes adoloridas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Coloque una cataplasma de ajo machacado y col, mezcle con aceite de palma, envuelva la parte adolorida con esta mezcla y ate con un paño.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/afonico/afonico_tres.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '5. Hervir la corteza del mango durante 1 hora en 5 litros de agua, enfriar, luego filtrar, beber 1 vaso por la mañana y por la noche hasta la recuperación.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '6. Ralle la cebolla y aplique sobre las partes dolorosas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/absceso/absceso_cebolla.jpg',
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
