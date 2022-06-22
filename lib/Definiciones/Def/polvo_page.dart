import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class PolvoPage extends StatelessWidget {
  const PolvoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Polvo', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/convulsion_uno.jpg'),
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
                '¿Cómo es el Polvo?',
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
                'Es una forma de aprovechamiento de los principios activos de las plantas por parte del cuerpo humano.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/assets/tratamientosimg/polvo_1.jpg',
                  fit: BoxFit.contain,
                  //width: 450,
                  height: 300),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Puede ingerirse mediante cápsulas o diluirse en agua como es el caso de las semillas purgantes.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/assets/tratamientosimg/cocimiento_0.jpg',
                  fit: BoxFit.contain,
                  //width: 450,
                  height: 300),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Con el polvo es posible también elaborar comprimidos, talco o tabletas que facilitan el uso de las plantas medicinales cuando se está de viaje o cuando el ritmo de la vida no permite la preparación tradicional.',
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
