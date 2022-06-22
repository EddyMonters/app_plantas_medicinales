import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DiabetesScreen extends StatelessWidget {
  const DiabetesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/diabetes_0.jpg'),
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
                '¿Cómo tratar la Diabetes?',
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
                '1. Bebe de 1 a 2 vasos de jugo de repollo al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/anemia/anemia_tres.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Bebe jugo de judías verdes 1 vaso por día.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/tratamientosimg/diabetes_1.jpg',
                height: 280,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '3. Ponga en 1 litro de agua tres cebollas grandes y un corte de limón hervir durante 4 minutos, dejar enfriar y filtrar. Beber un vaso con el estómago vacío, una bebida antes del almuerzo y una bebida después cena.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_2.jpg',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Infundir de 6 a 10 minutos en un litro de agua hirviendo un puñado de hojas de aguacate secas para beber a voluntad durante el día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_3.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '5. Tome al menos dos meses por la mañana con el estómago vacío, un jugo de 2 a 4 limones en un vaso de jugo de toronja: tome la misma cantidad y lejos de las comidas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/diabetes_4.jpg',
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/diabetes_5.jpg',
                      fit: BoxFit.contain,
                      height: 200,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '6. Macer, la planta de aloe verá y consumirá un vaso dos veces al día.',
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
