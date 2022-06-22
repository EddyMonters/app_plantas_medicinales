import 'package:flutter/material.dart';

class EsguincesScreen extends StatelessWidget {
  const EsguincesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esguinces', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/esginces_0.jpg'),
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
              '¿Cómo tratar los Esguinces?',
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
              '1. Aplique el bálsamo sobre una hoja de col aplastada, cúbralo con un paño y péguelo con cinta adhesiva ligeramente sin apretar cada noche hasta que sane.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/esginces_1.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2. Aplastar jengibre + ajo + chile: cocinar en aceite de palma, usar para masaje.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_muelas_4.jpg',
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
