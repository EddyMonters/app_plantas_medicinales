import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class InfusionPage extends StatelessWidget {
  const InfusionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infusiones', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/infusion_0.jpg'),
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
                '¿Qué son las infusiones? (para plantas arómaticas)',
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
                'Es cuando al agua hirviendo se le agregan las flores o las hojas de la planta, se tapa y se deja reposar, o bien se coloca en un recipiente un gramo de producto vegetal molido o picado y, posteriormente, se añaden 200 mililitros de agua hirviendo (lo equivalente a una taza).',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/infusion_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 300,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Se cubre inmediatamente y se deja en reposo durante unos 10 minutos, mientras se entibia o enfría, después se cuela.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/infusion_3.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 250,
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
