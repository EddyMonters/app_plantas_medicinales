import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ImportanciaPage extends StatelessWidget {
  const ImportanciaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Importancia', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Importancia.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeIn(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                'La importancia de las plantas medicinales',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Para que una planta sea considerada medicinal, debe tener propiedades curativas o preventivas para algún padecimiento. ',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              Image.asset(
                'lib/assets/tratamientosimg/importancia_1.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 300,
              ),
              const Text(
                ' Se considera que nuestros antepasados obtuvieron el conocimiento de estas especies después de distinguir entre las que servían para comer y aquellas que tenían algún efecto en su organismo, por lo que a partir de esto empezaron a diferenciarlas y seleccionarlas. ',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'lib/assets/imagenes/antepasados.jpg',
                fit: BoxFit.contain,
                //width: 450,
                height: 350,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Actualmente, en México, la importancia de las plantas medicinales no sólo radica en su riqueza como parte de la cultura, sino también en el conocimiento científico que se genera a partir de su estudio y del análisis que se realiza de cuestiones ecológicas, geográficas, culturales, farmacológicas y químicas que constituyen el contexto global.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                'lib/assets/imagenes/medicina.png',
                fit: BoxFit.cover,
                // width: 450,
                height: 380,
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
