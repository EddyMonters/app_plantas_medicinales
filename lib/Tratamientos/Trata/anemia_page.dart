import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnemiaScreen extends StatelessWidget {
  const AnemiaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anemia', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/anemia/anemia_uno.jpg'),
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
                '¿Cómo tratar la Anemia?',
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
                '1. Mezcle un huevo con toronja más un limón y beba 1 a 2 vasos al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Bebe de 1 a 2 tazas de jugo de zanahoria al día hasta que te mejores.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/alimentacion/alimentacion_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Bebe de 1 a 2 vasos de jugo de repollo al día hasta que se cure.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/anemia/anemia_tres.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Bebe de 1 a 2 vasos de jugo de naranja un día antes de la comida.',
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
                'lib/assets/anemia/anemia_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const Text(
                '5. Bebe una decocción de un puñado de perejil en 1 litro de agua.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '6. Consumir hojas de espinaca como vegetal.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '7. Una vez al día, beba 1 vaso de agua tibia con 1 cucharadita de miel orgánica (rica en cobre, hierro y manganeso) y 1 cucharadita de vinagre de sidra. La vitamina B12 y el ácido fólico combatirán la anemia, pero no beban más de una bebida al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/anemia/anemia_cuatro.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '8. La arcilla verde es famosa por rellenar las deficiencias minerales y promover la reconstitución de los glóbulos rojos. Diluir 1 cucharadita de arcilla verde en medio vaso de agua. Mezclar con una cuchara de madera ( nunca metal con arcilla) la noche anterior y trague el ayuno a la mañana siguiente durante 15 días.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              Image.asset(
                'lib/assets/anemia/anemia_cinco.jpg',
                fit: BoxFit.contain,
                height: 450,
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
