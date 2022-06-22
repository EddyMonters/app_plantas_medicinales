import 'package:flutter/material.dart';

class DolorMuelasScreen extends StatelessWidget {
  const DolorMuelasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dolor de Muelas', style: TextStyle(fontSize: 30)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/tratamientosimg/dolor_muelas_0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              '¿Cómo tratar el Dolor de Muelas?',
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
              '1. Cepille todos los días con una mezcla de polvo de arcilla y sal.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_muelas_1.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2. Para fortalecer el diente, frota las raíces todos los días con la cáscara de limón.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_muelas_2.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '3. Mastica las hojas de guayaba y deja el jugo en la boca.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_muelas_3.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '4. El ajo es un excelente aliado contra el dolor dental, libera una sustancia química, llamada alicina, que libera propiedades antibióticas que reducen la infección. Aplique el diente de ajo triturado en el diente afectado, el dolor Será más fácil, frote un diente de ajo en sus encías y dientes.',
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
            const Text(
              '5. El jengibre tiene una acción antiinflamatoria, antiséptica y antibacteriana que ayuda a aliviar el dolor de muelas al tomar 2 cucharaditas de jengibre en polvo mezclado con 1 cucharadita de agua. hasta que tenga una pasta consistente, luego coloque esta preparación en un algodón y aplíquela en el diente adolorido sin tocar la encía. ',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_muelas_4.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '6. Los clavos se han usado durante años para tratar el dolor de muelas, ya que contiene eugenol, un antiséptico natural. Use una pequeña cantidad de clavo en polvo en el diente o mastique la uña entera para liberar su aceite, y puede usar una pequeña cantidad de aceite de clavo de olor, aproximadamente dos gotas, y colocarlo en el area del problema hasta que desaparezca el dolor.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/tratamientosimg/dolor_muelas_5.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const Text(
              '7. La cebolla contiene sustancias fitoquímicas que atacan a los gérmenes responsables de las infecciones orales y que alivian el dolor. Corte un trozo de cebolla y mastíquelo en el lado adolorido de la boca. Cebolla para penetrar en tu diente.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'lib/assets/absceso/absceso_cebolla.jpg',
              fit: BoxFit.cover,
              height: 280,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
