import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FatigaScreen extends StatelessWidget {
  const FatigaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fatiga', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/fatiga_0.jpg'),
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
                '¿Cómo tratar la Fatiga?',
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
                '1. Triture un diente de ajo por la noche, póngalo en un vaso de agua tibia y bébalo por la mañana. Pasará su día a gusto.',
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
                '2. Bebe 1 vaso de jugo de judías verdes al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              // para agregar un pequeño espacio entre parrafos
              const Text(
                '3. Un diente de ajo en ayunas o untarlo en una rebanada de pan te ayudará a recuperar gradualmente la energía que necesitas, y también es muy bueno para tu salud.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Menta En caso de un simple golpe de fatiga, una gota de menta en un vaso de agua caliente, complementada con una cucharada de miel si lo deseas (para el gusto), te ayudará a comenzar el día en condiciones. Ideal para beber antes del desayuno.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17),
              ),

              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/fatiga_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ), // para agregar un pequeño espacio entre parrafos
              const Text(
                '5. Para preparar esta bebida de antaño, cocine una cebolla rebanada en 1/2l de agua durante 15 minutos; una vez enfriada, la decocción solo debe filtrarse para ingerirla. Beba una vez al día mientras persista la fatiga. ',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_2.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                '6. Para revitalizar tu cuerpo de manera efectiva y natural, toma una cucharada de canela en polvo y una cucharada de miel en un vaso de agua caliente y mézclala. Bebe esta poción por la mañana y por la noche. estará en la parte superior de su formulario en una semana y el efecto es instantáneo.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/fatiga_2.jpg',
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
