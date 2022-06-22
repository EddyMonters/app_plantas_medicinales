import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HipoScreen extends StatelessWidget {
  const HipoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hipo', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/hipo_0.jpg'),
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
                '¿Cómo tratar el Hipo?',
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
                '1. Toma un pedazo de azúcar empapado en jugo de limón o 2 cucharadas de jugo de limón sin diluir.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/hipo_1.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'lib/assets/tratamientosimg/diabetes_4.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                ],
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
