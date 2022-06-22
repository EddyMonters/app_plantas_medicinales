import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class UlcerasScreen extends StatelessWidget {
  const UlcerasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Úlceras en la Boca', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/ulseras_0.jpg'),
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
                '¿Cómo tratar las Úlceras en la Boca?',
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
                ' 1. Enjuague la boca por la mañana y por la noche con una decocción de corteza de safour (Prunier).',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/angina/angina_dos.jpg',
                fit: BoxFit.cover,
                //height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Haz el enjuague bucal con el jugo de limón que has mezclado con una cucharadita de miel varias veces al dia.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_4.jpg',
                fit: BoxFit.cover,
                //height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Empape un hisopo de algodón en el vinagre de sidra de manzana y aplíquelo en la úlcera bucal. Renueve una vez al día hasta que desaparezca la úlcera en la boca.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/ulseras_1.jpg',
                fit: BoxFit.cover,
                //height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. La salvia es conocida como un remedio de la abuela para las úlceras bucales, toma infusiones de salvia varias veces al día, hasta la curación, o puedes hacer baños de salvia.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/asma_cuatro.jpg',
                fit: BoxFit.cover,
                //height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '5. Algunas hojas de albahaca en bruto, ya que tienen poderes antisépticos.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/fiebre_1.jpg',
                fit: BoxFit.cover,
                //height: 200,
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
