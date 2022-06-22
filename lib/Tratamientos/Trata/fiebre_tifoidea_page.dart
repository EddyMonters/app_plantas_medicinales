import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FiebreTifoideaScreen extends StatelessWidget {
  const FiebreTifoideaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fiebre tifoidea ', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/fiebre_0.jpg'),
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
                '¿Cómo tratar la Fiebre tifoidea?',
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
                '1. Triture 250 g de ajo en 1 litro de leche sin azúcar, hierva durante 10 minutos, beba ½ vaso por la mañana y ½ vaso por la noche hasta que se cure.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_cabeza_2.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. En un vaso de agua, agregue un poco de miel, media cucharadita de vinagre de manzana, beba antes de las comidas durante siete días.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_cuatro.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Hervir 8 dientes de ajo en 8 tazas de agua durante unos minutos Cubrir y dejar enfriar Filtrar y beber el día durante una semana.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Hierva una taza de agua con veinte hojas de albahaca, con una cucharadita de jengibre rallado hasta que la mezcla se reduzca a la mitad, luego agregue un poco de miel, beba este té tres veces al día durante unos minutos. dias.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/fiebre_1.jpg',
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
