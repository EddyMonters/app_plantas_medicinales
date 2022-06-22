import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Salvia/salvia_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Sause_Blanco/blanco_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Siempreviva/siemprevivia_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_S/Plantas/Sinicuiche/sinicuiche_page.dart';
import 'package:flutter/material.dart';

import '../Orden_Con_Z/Plantas/Zavila/zavila_page.dart';

class DiccionarioOrdenS extends StatelessWidget {
  const DiccionarioOrdenS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantas con la Inicial S',
            style: TextStyle(fontSize: 23)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Diccionario_plantas.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInRight(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Row(),
            const SizedBox(
              height: 20,
            ),
            Card(
              shadowColor: Colors.cyanAccent[300],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/P/salvia_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const SalviaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Salvia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              shadowColor: Colors.green[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/P/sauce_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const SauseBlancoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Sauce Blanco',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              shadowColor: Colors.green[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/T/zabila_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const ZavilaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Sábila',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              shadowColor: Colors.green[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/P/siempre_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const SiemprevivaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Siempreviva',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              shadowColor: Colors.green[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/P/sinicuiche_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const SinicuicheScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Sinicuiche',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
