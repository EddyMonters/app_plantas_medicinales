import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ConvulsionScreen extends StatelessWidget {
  const ConvulsionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convulsión', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/convulsion_dos.jpg'),
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
                '¿Cómo tratar la convulsión?',
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
                '1. Haga una cataplasma de arcilla en la nuca y la columna vertebral y la parte inferior del abdomen, frote las extremidades y la columna vertebral tome una cucharadita en un vaso de agua cada mañana durante 10 a 20 días (es necesaria una consulta médica).',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/convulsion_uno.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const Text(
                '2. Mezcle una cucharada de arcilla y aceite de palmiste y aplique la mezcla en la nuca del niño. Después de mezclar una cucharada de arcilla, miel y aceite de palma, consuma niño.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Inhalación de jugo de cebolla',
                style: TextStyle(fontSize: 17),
                textAlign: (TextAlign.justify),
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
