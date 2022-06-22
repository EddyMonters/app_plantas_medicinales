import 'package:flutter/material.dart';

class NombreGuamuchilPage extends StatelessWidget {
  const NombreGuamuchilPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nombre Común: ',
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
                'Guamúchil, chucum blanco, umuh (Rep. Mex); bebguiche, pe-qui-che, piquiche, pequijche, nocuana-guiche, yaga-be-guiche, yagapiquiche (l. zapoteca, Oax.); cuamuchitl (l. náhuatl); cuamuchil, guamoche, guamúche, guaymochile, guamache (Gro.); guamúchil, huamuchil (Mor., y otros estados del sur); guau-mochtli; cuamuche, humo (Tamps.); guamuti (El Soconusco, Chis.); lala-nempá (l. cuicatleca, Oax.); lileka (l. totonaca, norte de Pue.); macachuni (l. guarigia, Chih.); macochín (Sin.); ma-dju (l. chinanteca, Oax.); muchite, múchitl (Oax.); matúrite (l. huichol, Jal.); nempa (l. cuicatleca, totolapan, Gro.); nipe (Chiapa de Corzo, Chis.); ticuahndi (l. mixteca, Jicaltepec, Oax.); ts´uui´che (l. maya, Yuc.); umi (l. huasteca, sureste de S.L.P.)',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),

              Card(
                shadowColor: Colors.amber,
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/G/Guamuchil_1.jpg'),
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
                'Nombre Científico: ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold, //para agragar la letra de forma negrita
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //personlaizar una linea de texto cpn diferentes estilos
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Pithecellobium dulce',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        )),
                    TextSpan(
                        text: ' (Roxb.) Benth.',
                        style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.green,
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/G/Guamuchil_2.jpg'),
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
                'Familia:',
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
                'Leguminosae o Fabaceae.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shadowColor: Colors.amber[600],
                elevation: 25,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: const AssetImage('lib/assets/G/Guamuchil_3.jpg'),
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
