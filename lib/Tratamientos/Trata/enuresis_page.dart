import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class EnuresisScreen extends StatelessWidget {
  const EnuresisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enuresis', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/enuresis_0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInRight(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '¿Cómo tratar el Enuresis (orina en la cama)?',
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
                '1. Beba una cucharada de miel todas las noches a la hora de acostarse y despierte al niño a cierta hora para que se acostumbre a él.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/calambre_dos.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const Text(
                '2. Hervir estigmas (almidón de maíz) y sal de germen Beber ¼ vaso dos veces al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/enuresis_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '3. Debemos tomar 16 trozos de azúcar, la raíz masculina de papaya y 3 trozos de carbón. Mida todo en una botella de agua agregada para darle al infractor una bebida cada noche antes de irse a la cama.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_estomago_3.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
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
