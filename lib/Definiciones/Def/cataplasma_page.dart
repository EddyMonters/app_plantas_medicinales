import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CataplasmaPage extends StatelessWidget {
  const CataplasmaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cataplasma', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage(
              'lib/assets/tratamientosimg/cataplasma_0.jpg',
            ),
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
                'Cataplasma o Emplasto',
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
                'Es el procedimiento que se utiliza en caso de enfermedades de la piel, como granos, heridas, úlceras externas, etcétera.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/cataplasma_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 350,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Consiste en machacar planta fresca y colocarla en contacto con la parte afectada, deteniéndola con una tela por el tiempo que se considere conveniente.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/cataplasma_2.jpg',
                      fit: BoxFit.contain,
                      //width: 450,
                      height: 180,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/cataplasma_3.jpg',
                      fit: BoxFit.contain,
                      //width: 450,
                      height: 200,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
