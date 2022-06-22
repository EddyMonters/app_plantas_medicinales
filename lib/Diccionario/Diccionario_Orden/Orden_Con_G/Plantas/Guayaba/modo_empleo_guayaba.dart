import 'package:flutter/material.dart';

import '../../../../../screens/screens.dart';

class EmplearGuayabaPage extends StatelessWidget {
  const EmplearGuayabaPage({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Se emplea para:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Diarrea, vómito, evitar la caída del cabello y como antiinflamatorio.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.purple,
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image:
                          const AssetImage('lib/assets/ajenjo/ajenjo_10.jpg'),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Formas de uso:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InfusionPage()));
                },
                child: const Text(
                  'Infusión.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.green[800],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image:
                          const AssetImage('lib/assets/ajenjo/ajenjo_11.jpg'),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Parte utilizada:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hojas y fruto.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.blueAccent,
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/G/guayaba_8.jpg'),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Dosis:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '10 gramos de hojas por litro de agua, en infusión. Tomar una taza cada seis horas durante tres días.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shadowColor: Colors.yellow[800],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/G/guayaba_9.jpg'),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
