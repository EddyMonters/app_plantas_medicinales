import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DolorEspaldaScreen extends StatelessWidget {
  const DolorEspaldaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dolor de Espalda', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/dolor_espalda_1.jpg'),
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
                '¿Cómo tratar el Dolor de Espalda?',
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
                '1. Beba jugo de Aloe Vera mezclado con agua y miel o jugo de frutas Masaje gradualmente las áreas dolorosas con el gel o la pata de aloe vera.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/asma_cuatro.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2. Una cataplasma de repollo: ablanda las hojas grandes de un repollo verde, luego se coloca en varias capas, se mantiene con compresas y se venda todo.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/dolor_cataplasma_1.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '3. Exprime el jugo de un limón en un vaso y agrega un poco de sal. Bebe dos veces al día hasta que esté satisfecho.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/diabetes_4.jpg',
                fit: BoxFit.cover,
                height: 280,
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                '4. Triture un diente de ajo, mézclelo con el aceite de oliva, caliente la mezcla solo un poco y apliquelo a la parte dolorosa y deje que funcione durante 3 horas',
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
            ],
          ),
        ),
      ),
    );
  }
}
