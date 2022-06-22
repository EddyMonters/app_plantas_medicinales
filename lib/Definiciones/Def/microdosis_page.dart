import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MicrodosisPage extends StatelessWidget {
  const MicrodosisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Microdosis', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/maceracion_1.jpg'),
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
                '¿Cómo es la Microdosis?',
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
                'Es un procedimiento terapéutico que se utiliza para ingerir plantas medicinales con cierta toxicidad (con efectividad terapéutica en dosis mínimas), plantas costosas, escasas o simplemente para optimizar los recursos herbolarios de nuestro país.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/assets/tratamientosimg/microdosis_1.jpg',
                  fit: BoxFit.contain,
                  //width: 450,
                  height: 300),
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
