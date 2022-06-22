import 'package:flutter/material.dart';

class JarabePage extends StatelessWidget {
  const JarabePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jarabe', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/jarabe_0.jpg'),
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
              '¿Cómo es la Jarabe?',
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
              'Es un preparado que consiste en hacer, primero, una cocción a razón de 100 gramos de planta fresca o seca triturada o molida, por cada litro de agua, con cocimiento de ocho minutos.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset('lib/assets/tratamientosimg/jarabe_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 250),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'La cocción se deja reposar dos horas, se filtra y se coloca nuevamente a fuego lento, agregando lentamente medio kilogramo de azúcar por cada litro, hasta que se disuelva totalmente.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'El producto se administra a cucharadas.',
              style: TextStyle(fontSize: 18),
              //textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset('lib/assets/tratamientosimg/jarabe_4.jpg',
                      fit: BoxFit.contain,
                      //width: 450,
                      height: 250),
                ),
                Expanded(
                  child: Image.asset('lib/assets/tratamientosimg/jarabe_3.jpg',
                      fit: BoxFit.contain,
                      //width: 450,
                      height: 250),
                ),
              ],
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
