import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class OjosCansadosScreen extends StatelessWidget {
  const OjosCansadosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ojos Cansados', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/ojos_0.jpg'),
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
                '¿Cómo tratar los Ojos Cansados?',
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
                '1. Consumir la levadura de cerveza regularmente para disfrutar de sus virtudes. La levadura de cerveza tiene muchos beneficios. Una de ellas es aliviar los ojos irritados por las pantallas y mejorar la vista.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/ojos_1.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Simplemente coloque unas gotas de loción de aloe vera en cada ojo. El aloe vera es efectivo para los ojos irritados por el sol, pero no solo si tiene dolor en los ojos debido a un día dedicado a trabajar en la pantalla de la computadora, el aloe vera también lo relevará.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/ojos_2.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. El agua floral de aciano es un ingrediente natural perfecto para los ojos rojos e irritados. La aplicación es simple, solo ponga compresas de agua floral de aciano en los ojos hinchados durante 5 minutos renovar si es necesario.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/ojos_3.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Se sabe que la infusión de manzanilla es un tratamiento de belleza para los ojos con esta punta, tus párpados y tus ojos finalmente se calmarán: hierve agua caliente en una cacerola, déjala infundir 2 sobres de infusión de manzanilla durante 10 minutos, colóquelos en el refrigerador mientras se enfrían, recuéstese y aplique un sobre en cada párpado, déjelo durante 10 minutos.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/ojos_4.jpg',
                fit: BoxFit.contain,
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
