// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NombreEucaliptoPage extends StatelessWidget {
  const NombreEucaliptoPage({
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
                'Eucalipto dólar.',
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
                      image: const AssetImage('lib/assets/D/Eucalipto_1.jpg'),
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
                        text: 'Eucaliptus cinerea',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                        )),
                    TextSpan(
                        text: ' F.Muell. ex Benth.',
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
                      image: const AssetImage('lib/assets/D/Eucalipto_2.jpg'),
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
                'Myrtaceae.',
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
                      image: const AssetImage('lib/assets/D/Eucalipto_3.jpg'),
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
