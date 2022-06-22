import 'package:flutter/material.dart';

class DolorRinonScreen extends StatelessWidget {
  const DolorRinonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dolor de Riñon', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/dolor_rinion_0.jpg'),
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
              '¿Cómo tratar el Dolor de Riñon?',
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
              '1. Tomar una cantidad de hojas de hierba de limón, secar durante unos días, luego dejarla fermentar en 1 litro de agua durante 1 día, agregar limón Beber 1 vaso por la mañana, tarde y noche durante 2 semanas.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_rinion_1.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2. Tomar las raíces de mango cortadas en trozos pequeños y poner en agua, hervir la mezcla y beber 1 vaso mañana, tarde y noche.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_rinion_2.jpg',
              fit: BoxFit.cover,
              height: 280,
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
