import 'package:flutter/material.dart';

class GargarismoPage extends StatelessWidget {
  const GargarismoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gargarismo', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/gargara_0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              '¿Cómo es el Gargararismo?',
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
              'Se utilizan plantas astringentes. Es el procedimiento que ayuda a mitigar la irritación de la garganta y a contraer las membranas mucosas de la cavidad bucal.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Se hace una cocción a razón de un gramo por 100 mililitros de agua.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'lib/assets/tratamientosimg/gargarismo_1.jpg',
              fit: BoxFit.cover,
              height: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Después de colar y entibiar se hacen gárgaras, repitiendo cada cuatro o seis horas.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'lib/assets/angina/angina_dos.jpg',
              fit: BoxFit.contain,
              //width: 450,
              height: 250,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
