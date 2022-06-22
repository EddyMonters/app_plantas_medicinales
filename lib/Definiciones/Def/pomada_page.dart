import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class PomadaPage extends StatelessWidget {
  const PomadaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomada', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/pomada_1.jpg'),
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
                '¿Cómo emplear la Pomada?',
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
                'A fuego lento se pone base de aceite neutra a que se derrita, posteriormente se mezcla con tintura madre, o bien, planta fresca o seca a razón de cinco mililitros de tintura o cinco gramos de plantas por cada 100 gramos de base aceite.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Se revuelve perfectamente para obtener una mezcla homogénea, se filtra y se deposita en los recipientes que se elijan.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/assets/tratamientosimg/gargarismo_1.jpg',
                  fit: BoxFit.contain,
                  //width: 450,
                  height: 350),
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
