import 'package:flutter/material.dart';

class DescripcionSinicuichePage extends StatelessWidget {
  const DescripcionSinicuichePage({
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
              const Text(
                'Descripción botánica:',
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
                'Arbusto de hasta tres metros de altura. Hojas opuestas, sésiles, enteras, lanceoladas, de dos a nueve centímetros de largo, con borde liso, más pálidas por el envés.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shadowColor: Colors.lightGreen[600],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/P/sinicuiche_4.jpg'),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Flores amarillas, solitarias, axilares, con pedúnculo corto y un par de brácteas en la base, que es acampanada; sépalos triangulares con apéndices más cortos y estrechos intercalados; cinco a siete pétalos que se caen pronto; con 10 a 18 estambres.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shadowColor: Colors.lightGreen[600],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/P/sinicuiche_5.jpg'),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'El fruto es una cápsula que se abre en cuatro valvas, globosa, envuelta en el receptáculo, algo ensanchado.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shadowColor: Colors.lightGreen[600],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/P/sinicuiche_6.jpg'),
                      fit: BoxFit.cover,
                      height: 380,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
}
