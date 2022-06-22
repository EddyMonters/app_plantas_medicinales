import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AcneScreen extends StatelessWidget {
  const AcneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acné', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/acne/acne_intro.jpg'),
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
              const SizedBox(
                height: 05,
              ),
              const Text(
                '¿Cómo tratar el Acné?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/acne/acne.jpg',
                fit: BoxFit.contain,
                height: 130,
              ),
              const SizedBox(
                height: 20,
              ), // para agregar un pequeño espacio entre parrafos
              const Text(
                '1. Mezcle un tomate y agregue una cucharada de aceite de oliva, ponga la mezcla en su cara y deje que se seque durante unos 15 minutos. Este truco debe usarse todos los días para obtener un resultado óptimo contra el acné.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/acne/acne_ac.jpg',
                fit: BoxFit.contain,
                //height: 130,
                width: 280,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '2. Las propiedades antisépticas, tonificantes y curativas del limón son bien conocidas: para el acné, el limón es un aliado ideal, frote su cara con énfasis en las áreas infectadas con medio limón. Este simple gesto mata a los microbios, limpia la piel y tonifica la cara al apretar sus poros y mejor para combatir el acné.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Image.asset(
                'lib/assets/acne/acne_limon.png',
                //fit: BoxFit.contain,
                //height: 130,
                width: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '3. Mezcle 3 cucharaditas de bicarbonato y una cucharadita de agua. Obtiene una pasta para aplicar en la cara, deje por más de 30 minutos antes de lavarse la cara. ',
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
