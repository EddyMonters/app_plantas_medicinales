import 'package:app_plantas_medicinales/Definiciones/Def/topico_page.dart';
import 'package:flutter/material.dart';

class EmplearNicolasPage extends StatelessWidget {
  const EmplearNicolasPage({
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
                height: 10,
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
                'Dolor de aire y baño postparto. Es desinflamatorio.',
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
                      image: const AssetImage('lib/assets/H/nicolas_9.jpg'),
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
                          builder: (context) => const TopicoPage()));
                },
                child: const Text(
                  ' Tópico.',
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
                      image: const AssetImage('lib/assets/H/nicolas_10.jpg'),
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
                'Toda la planta, excepto la raíz.',
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
                      image: const AssetImage('lib/assets/H/nicolas_11.jpg'),
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
                'Usar 20 gramos en un litro de agua en cocimiento suave. Aplicación local, uso tópico.',
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
                      image:
                          const AssetImage('lib/assets/ajenjo/ajenjo_14.jpg'),
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