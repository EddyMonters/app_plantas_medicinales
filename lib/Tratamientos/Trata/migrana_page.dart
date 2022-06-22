import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MigranaScreen extends StatelessWidget {
  const MigranaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Migraña', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/cefalea_uno.jpg'),
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
                '¿Cómo tratar la Migraña?',
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
                '1. Necesitas rebanadas de papas crudas en algodón, luego espolvoréalas con pimienta negra, luego aplícalos todos en la frente, durante al menos 1 hora. El efecto es realmente faroleando.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/conjuntivitis_seis.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Aplique aceite esencial de menta en la frente mientras evita el contacto con los ojos, y vuelva a aplicar cada 15 a 30 minutos hasta que la mejora sea demasiado efectiva.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/migraña_1.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Las plantas ricas en cafeína, como el café, el té y el mate, a menudo se recomiendan para los dolores de cabeza durante las convulsiones, por lo que una taza de café al primer signo de los síntomas ayudaría a reducir la intensidad de la migraña.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/migraña_2.jpg',
                fit: BoxFit.contain,
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '4. Comer unos pocos dientes de ajo todos los días te mantendrá a salvo de las migrañas. La sangre se purifica y elimina muchas toxinas. Haz el experimento y no te decepcionará porque esta es la Salud diaria sin medicación.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/afonico/afonico_tres.jpg',
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
