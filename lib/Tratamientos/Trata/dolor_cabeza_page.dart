import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DolorCabezaScreen extends StatelessWidget {
  const DolorCabezaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dolor de Cabeza', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/dolor_cabeza_0.jpg'),
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
                '¿Cómo tratar los Dolores de Cabeza?',
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
                '1. Hervir una papaya verde mediana en 1 litro de agua durante 10 minutos Filtrar e instilar 4 gotas por fosa nasal 3 veces al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_cabeza_1.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Triture un diente de ajo y 03 granos de limón, luego diluya con una pequeña cantidad de agua y beba.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
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
                      'lib/assets/tratamientosimg/dolor_cabeza_2.jpg',
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
                '3. Triture o triture las hojas de papaya verde mezcle con agua, filtre y beba 03 veces al día. Esta mezcla es inmediatamente calmante.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Una cataplasma de cebolla cruda aplicada en la trente.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_2.jpg',
                fit: BoxFit.cover,
                height: 200,
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
