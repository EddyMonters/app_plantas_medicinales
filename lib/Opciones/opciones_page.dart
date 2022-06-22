// ignore_for_file: avoid_print

import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Intro/intro.dart';
import 'package:app_plantas_medicinales/Opciones/Acerca_de/acerca_de.dart';
import 'package:app_plantas_medicinales/Opciones/bibliografia/bibliografia.dart';
import 'package:app_plantas_medicinales/Opciones/boton_acercade.dart';
import 'package:app_plantas_medicinales/Opciones/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final void Function()? onPress;

  ItemBoton(this.icon, this.texto, this.color1, this.color2, this.onPress);
}

class OpcionesPage extends StatelessWidget {
  const OpcionesPage({Key? key}) : super(key: key);

  void dialogoVersion(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false, //permite hacer click en la sombra
        context: context,
        builder: (contex) {
          return CupertinoAlertDialog(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadiusDirectional.circular(30)),
            //backgroundColor: Colors.amber.shade100,
            // elevation: 5,
            // title:
            content: Column(
              mainAxisSize:
                  MainAxisSize.min, //hace que tome lo minimo do la columna
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'lib/assets/imagenes/logo.png',
                  fit: BoxFit.contain,
                  //width: 450,
                  height: 90,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Aplicación móvil para plantas medicinales',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Versión',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '1.1',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            actions: [
              //const Divider(color: Colors.black26),
              const Divider(),
              const SizedBox(),
              TextButton(
                  onPressed: () => Navigator.pop(contex),
                  child: const Text(
                    'OK',
                    style: TextStyle(fontSize: 25),
                    // textAlign: TextAlign.center,
                  ))
            ],
          );
        } //builder es un codigo que construye Widgets
        );
  }

  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      ItemBoton(Icons.perm_contact_calendar_rounded, 'Acerca de',
          const Color(0xff6989F5), const Color(0xff906EF5), () {
        final route =
            MaterialPageRoute(builder: (context) => const AcercaDePage());
        Navigator.push(context, route);
      }),
      ItemBoton(Icons.home, 'Ver "Bienvenidos"', const Color(0xff6989F5),
          const Color(0xff906EF5), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const IntroPage()),
        );
      }),
      ItemBoton(Icons.collections_bookmark_rounded, 'Bibliografía',
          const Color(0xff317183), const Color(0xff46997D), () {
        final route =
            MaterialPageRoute(builder: (context) => const BibliografiaPage());
        Navigator.push(context, route);
      }),
      ItemBoton(Icons.info_outline, 'Versión', const Color(0xffF2D572),
          const Color(0xffE06AA3), () => dialogoVersion(context)),
    ];

    List<Widget> itemMap = items
        .map((item) => FadeInLeft(
              //duration: const Duration(microseconds: 800),
              child: BotonAcercaDe(
                icon: item.icon,
                texto: item.texto,
                color1: item.color1,
                color2: item.color2,
                onPress: item.onPress,
              ),
            ))
        .toList();

    return Scaffold(
      //backgroundColor: Colors.red,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 250),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [...itemMap],
            ),
          ),
          const IconHeader(),
        ],
      ),
      //body: BotonAcercaDeTemp(),

      //body: IconHeader(),
    );
  }
}

class BotonAcercaDeTemp extends StatelessWidget {
  const BotonAcercaDeTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonAcercaDe(
      icon: Icons.perm_contact_calendar_rounded,
      texto: 'Acerca de',
      color1: const Color(0xff6989f5),
      color2: const Color(0xff906ef5),
      onPress: () {
        print('click en acerca de');
      },
    );
  }
}
