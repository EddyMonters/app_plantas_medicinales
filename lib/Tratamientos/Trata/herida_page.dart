import 'package:flutter/material.dart';

class HeridaScreen extends StatelessWidget {
  const HeridaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Herida', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/herida_0.jpg'),
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
              '¿Cómo tratar la Herida?',
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
              '1. Extienda una capa de miel, deje en su lugar y renueve 6 horas después de limpiar la primera. Es recomendable continuar el mismo tratamiento después de la cicatrización para eliminar las cicatrices.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/calambre_dos.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2. Lavar la herida y extender la baba de caracol.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/herida_1.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '3. Aplique una capa delgada de pasta de aguacate en la herida y deje la herida sin vendaje.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/herida_2.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '4. Ralle una papa cruda, limpie la herida con agua limpia, aplique la manzana fresca a la herida.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
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
