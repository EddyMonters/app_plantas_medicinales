import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AbscesoScreen extends StatelessWidget {
  const AbscesoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Absceso', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/absceso/cataplasma_dos.jpg'),
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
                '¿Cómo tratar el Absceso?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '1. Ralle las zanahorias con piel y aplique la pulpa fresca como cataplasma durante varios días.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/absceso/zanahoria_uno.jpg',
                fit: BoxFit.contain,
                height: 230,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Tome 1 cebolla mediana, cocínela sobre las cenizas o en el horno, póngala en ungüento y aplíquela en escayola, renuévela cada hora.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/absceso/absceso_cebolla.jpg',
                fit: BoxFit.contain,
                height: 230,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Cocine en la ceniza durante 15 minutos del puerro blanco, envuélvalo en papel mojado o en una hoja de col, triture y aplique como cataplasma, para renovarlo varias veces al día.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/absceso/puerro_uno.jpg',
                fit: BoxFit.contain,
                height: 230,
              ),
              Image.asset(
                'lib/assets/absceso/cataplasma_uno.jpg',
                fit: BoxFit.contain,
                height: 230,
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
