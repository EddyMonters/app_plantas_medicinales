import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class PerdidaCabelloScreen extends StatelessWidget {
  const PerdidaCabelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Perdida del Cabello', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/perdida_0.jpg'),
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
                '¿Cómo tratar la Caida del Cabello?',
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
                '1. Haga una mezcla de tabaco y aceite de almendra de palma, y use como aceite para el cabello.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/perdida_1.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '2. Busque el polvo de clavo de olor, mezcle con un poco de agua y aplíquelo en el cabello, déjelo durante la noche y lávese la cabeza por la mañana. Se va a detener la caída del cabello y los problemas de la película.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_muelas_5.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Las papas tienen un alto contenido de calcio, hierro, potasio y proteínas. Por lo tanto, pueden ayudarte a tener un cabello más largo y fuerte. Aquí está la mezcla de papas, miel, aloe vera. Las propiedades de la papa ayudan a fortalecer el cabello y previenen su caida.',
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
                      'lib/assets/tratamientosimg/conjuntivitis_seis.jpg',
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/calambre_dos.jpg',
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/asma_cuatro.jpg',
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                  ),
                ],
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
