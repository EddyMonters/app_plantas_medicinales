import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ExtractoPage extends StatelessWidget {
  const ExtractoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extracto hidroalcohólico',
            style: TextStyle(fontSize: 28)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/extracto_3.jpg'),
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
                '¿En que consiste el Extracto Hidroalcohólico?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              // para agregar un pequeño espacio entre parrafos
              const Text(
                'Es la maceración de planta en una solución que tiene 70% de alcohol de 96° y 30% de agua, en la cual se deposita la planta fresca o seca, en una proporción que no rebase el 60% del total de esa solución.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/extracto_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Una vez hecha la mezcla, se deposita en un recipiente oscuro, se cierra herméticamente para dejarlo reposar por 30 días.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/extracto_2.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'El producto obtenido se administra en forma de gotas diluidas en agua.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
