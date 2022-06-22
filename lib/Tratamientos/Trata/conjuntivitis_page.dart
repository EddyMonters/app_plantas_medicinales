import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ConjuntivitisScreen extends StatelessWidget {
  const ConjuntivitisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image:
                AssetImage('lib/assets/tratamientosimg/conjuntivitis_uno.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        title: const Text('Conjuntivitis', style: TextStyle(fontSize: 30)),
      ),
      body: FadeInRight(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                '¿Cómo tratar la Conjuntivitis?',
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
                '1. Ponga unas gotas de jugo de repollo en el ojo a la hora de acostarse.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_dos.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Cuando un niño pequeño contrae conjuntivitis, a menudo preferimos medicamentos blandos para tratarla. Si la madre aún está amamantando, ponga unas gotas de leche materna en el ojo infectado varias veces al día, preferiblemente en el momento de la alimentación, las virtudes antisépticas de la leche materna ya no deben ser probadas.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_tres.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. La miel es uno de los productos milagrosos de la naturaleza: antiséptico, antiviral y antibacteriano. Permite que el ojo, o los ojos, si ambos están afectados, vuelvan a su estado normal, en una taza de agua hervida. y fría, diluya una cucharadita de miel, luego use una vaina estéril vacía (por ejemplo, solución salina) y luego aplique dos o tres gotas tres veces al día en cada ojo. También puede aplicar miel pura en el ojo para reducir la inflamación.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_cuatro.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Aplique gel de aloe vera suavemente alrededor del ojo y el párpado, masajee suavemente y deje que entre. Renueve el procedimiento tres veces al día para reducir la inflamación y acelerar la curación. De igual manera, podemos sumergir un algodón en un poco de jugo de aloe vera previamente diluido en agua hervida y enfriado.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_cinco.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '5. La papa tiene propiedades antibacterianas, por lo que puedes aprovechar al máximo tus ojos, rallar una papa cruda y envolver las piezas en un tejido limpio similar a la muselina y poner esta cataplasma aproximadamente cinco minutos en los ojos. y repita el gesto dos o tres veces al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_seis.jpg',
                fit: BoxFit.contain,
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '6. Para aliviar la picazón y la sensación de ardor asociadas con la conjuntivitis, la manzanilla puede ser una respuesta efectiva. Por favor, moje algunas cabezas de flores de manzanilla.',
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
