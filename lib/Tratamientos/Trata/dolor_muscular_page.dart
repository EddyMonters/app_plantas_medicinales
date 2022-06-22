import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DolorMuscularScreen extends StatelessWidget {
  const DolorMuscularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Dólores Musculares ', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image:
                AssetImage('lib/assets/tratamientosimg/dolor_muscular_0.jpg'),
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
                '¿Cómo tratar los Dólores Musculares?',
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
                '1. Tome un baño caliente durante 20 minutos en el que haya vertido 500 g de sulfato de magnesio. El efecto transcutáneo del sulfato de magnesio alivia el dolor muscular.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_muscular_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Consume jugo de papa, reduce la fatiga y reduce el dolor al dilatar los vasos y aliviar los nervios. Consumir jugo de papa en ayunas para obtener mejores efectos en el cuerpo.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_muscular_2.jpg',
                fit: BoxFit.cover,
                height: 280,
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
