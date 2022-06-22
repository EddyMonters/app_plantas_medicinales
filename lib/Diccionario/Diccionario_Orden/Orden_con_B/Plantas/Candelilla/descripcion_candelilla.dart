import 'package:flutter/material.dart';

class DescripcionCandelillaPage extends StatelessWidget {
  const DescripcionCandelillaPage({
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
                'Planta perenne de 20 a 110 centímetros de altura, está provista de una raíz principal y raíces secundarias. Posee tallos aéreos y tallos subterráneos (rizomas), siendo los primeros de ramificación con forma cilíndrica, con diámetros de cinco a siete milímetros; con nudos de estrangulamiento, lampiños y presentan una coloración verde glauco cuando son jóvenes y blanquecinos cuando son adultos, como consecuencia de la delgada capa de cera que los cubre.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
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
                      image: const AssetImage(
                          'lib/assets/B/Candelilla/candelilla_4.jpg'),
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
                'Las hojas son verde glauco, poco abundantes, sólo permanecen en el tallo pocos días después de su aparición; presentan una forma desde lineal hasta elíptica y lanceolada; sésiles, gruesas y ensanchadas en su parte media, tienen de tres a cinco milímetros de longitud por un milímetro de ancho. Unisexuales, con involucros pequeños solitarios y axilares algunos forman un racimo terminal. El fruto es una cápsula de un centímetro de longitud o menos, rígida y recurvada.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
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
                      image: const AssetImage(
                          'lib/assets/B/Candelilla/candelilla_5.jpg'),
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
                'Las semillas son pequeñas de color café claro, variando su forma entre la elíptica y la ovoide, con sus extremos achatados. Cuando están secas presentan una superficie granulosa.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.red[600],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage(
                          'lib/assets/B/Candelilla/candelilla_6.jpg'),
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
