import 'package:flutter/material.dart';

class BibliografiaPage extends StatelessWidget {
  const BibliografiaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 209, 240, 169),
      appBar: AppBar(
        title: const Text(
          'Bibliografía',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/acercade/acercade.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/acercade/fondo_importancia.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Adobe Stock. (2022). Encuentra el contenido de stock perfecto para tu próximo proyecto creativo. Recuperado de https://stock.adobe.com/mx',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    'CONAFOR. (2010). Plantas medicinales de la farmacia Vicente del CEFOFOR: usos terapéuticos tradicionales y dosificación. México: CONAFOR.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    'María Luisa Santillán, DGDC-UNAM (2012). El uso tradicional de las plantas medicinales, un aporte para la ciencia. Recuperado de http://ciencia.unam.mx/',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    'Vecteezy. (2022). Plantas medicinales (vectores). Recuperado de Https://es.vecteezy.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold, //para agragar la letra de forma negrita
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
