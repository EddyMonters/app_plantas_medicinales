import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class InfeccionPulmonarScreen extends StatelessWidget {
  const InfeccionPulmonarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infección Pulmonar', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/bilis_uno.jpg'),
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
                '¿Cómo tratar la Infección Pulmonar?',
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
                '1. Verter un cuarto de litro de agua hirviendo sobre un puñado de ajo pelado, macerar durante 12 horas y tomar cada hora la siguiente dosis: 1 cucharada para todos los niños de 5 a 12 años.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/tratamientosimg/dolor_cabeza_2.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Tienes que hacer una infusión de clavo y bebida. Esta infusión combate perfectamente el dolor de garganta y la infección pulmonar gracias a sus propiedades antisépticas y antiespasmódicas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_muelas_5.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Hierva las cebollas, macháquelas y colóquelas entre dos capas de tela. Aplicar sobre la caja torácica durante aproximadamente 2 horas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/absceso/absceso_cebolla.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Poner 50 gramos de raíces secas de la planta Asparagus officinalis en un litro de agua en decocción (hervir entre 20 y 30 minutos). Beber 1 bebida por la mañana con el estómago vacío, una bebida al mediodía y una bebida por la noche a la hora de acostarse durante 1 semana, después de 1 semana de tratamiento, repita los exámenes para ver si la enfermedad ha terminado o evoluciona un poco. Puedes hacer este tratamiento 2 a 3 semanas más.',
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
