import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MaceracionPage extends StatelessWidget {
  const MaceracionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maceración', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/cocimiento_3.jpg'),
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
                'Maceración (partes vegetales sensibles al calor)',
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
                'La maceración consiste en depositar la planta triturada o molida en un recipiente con agua o alcohol. Se le deja reposar de uno a 14 días. Este procedimiento se utiliza con la finalidad de evitar cambios químicos en los principios activos sensibles al calor.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/maceracion_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
