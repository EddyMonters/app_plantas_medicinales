import 'package:flutter/material.dart';

class AcercaDePage extends StatelessWidget {
  const AcercaDePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 209, 240, 169),
      appBar: AppBar(
        title: const Text(
          'Acerca de',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/acercade/acercade.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/acercade/fondo_importancia.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/acercade/logo.png',
                    fit: BoxFit.contain,
                    //width: 50,
                    height: 250,
                  ),
                  const Text(
                    'Instituto Tecnológico Superior de Zacapoaxtla',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Desarrollador:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Eden Pineda Montero',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Asesores:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'MSC: Luis Alberto Espejo Ponce',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Biologa: Erika López Salgado ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '"Aplicación móvil para plantas medicinales" es una aplicación donde se muestra de manera clasificada información de los diferentes tipos de especies, ordenados alfabéticamente. Se ha colocado lo concerniente a nombre común, nombre científico y familia taxonómica a la que pertenece, parte de la planta que se utiliza, enfermedad o malestar que combate y el modo de preparación en la comunidad. Así mismo, se agregó una sección de padecimientos con sus respectivos tratamientos, y definiciones. ',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'La información presentada fue recolectada de CONAFOR.',
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
        ],
      ),
    );
  }
}
