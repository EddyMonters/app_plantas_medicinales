import 'package:flutter/material.dart';

class QuemaduraScreen extends StatelessWidget {
  const QuemaduraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quemadura', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/quemadura_0.jpg'),
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
              '¿Cómo tratar la Quemadura?',
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
              '1. Rallar las papas y aplicarlas a la herida, hacer que el paciente beba mucha agua (2 a 3 litros de agua al día).',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/conjuntivitis_seis.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2. Aplique miel a la herida para evitar la formación de ampollas y facilitar la curación.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/conjuntivitis_cuatro.jpg',
              fit: BoxFit.cover,
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              '3. Bate una clara de huevo y agrega 1 cucharadita de aceite de oliva. Aplica esta mezcla en el área afectada y espera a que se seque. Repite estas aplicaciones varias veces. Este tratamiento funciona de maravilla. Elimina completamente las marcas de quemaduras.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/quemadura_1.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
