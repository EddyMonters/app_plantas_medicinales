import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MareoScreen extends StatelessWidget {
  const MareoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mareo', style: TextStyle(fontSize: 30)),
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
            children: [
              const Text(
                '¿Cómo tratar el Mareo?',
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
                '1. Tome un vaso por la mañana y en la noche con leche sin azúcar y una botella de SODA.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/mareo_0.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Simplemente chupar una nuez moscada durante unos minutos La nuez moscada es muy eficaz para eliminar las náuseas y el vértigo.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              // para agregar un pequeño espacio entre parrafos
              const Text(
                '3. Tome un manojo de perejil fresco y colóquelo en su pecho o puede colgarlo alrededor de su cuello, o la efectividad del perejil ya no se probará contra este tipo de trastorno.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/mareo_1.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Este remedio casero puede parecer sorprendente, pero realmente funciona. Ponga un puñado de sal en una bolsa y cuélguelo alrededor de su cuello.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              // para agregar un pequeño espacio entre parrafos
              const Text(
                '5. El jengibre puede ayudarlo a sobrellevar el vértigo, porque esta increíble raíz mejora la circulación de la sangre hacia el cerebro mientras alivia las náuseas. Para beneficiarse de sus beneficios, deberá masticar un trozo de jengibre para aliviar el problema. Pero también puedes hacer un té de jengibre endulzando con miel,',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_muelas_4.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '6. La infusión de bálsamo de limón se recomienda para el mareo y el tinnitus, y para la receta, deberá infundir 25 g de hojas de bálsamo de limón en un litro de agua hirviendo durante unos 10 minutos y beber. la bebida 3 veces al día en una taza.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_4.jpg',
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
