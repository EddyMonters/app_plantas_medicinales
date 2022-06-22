import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Aceitilla/aceitilla_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ahuehuete/ahuehuete_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ajenjo/ajenjo_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Ajo/ajo_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Albahacar/albahacar_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Anis/anis_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Apio/apio_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Arnica/arnica_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_A/Plantas/Artemisa/artemisa_page.dart';
import 'package:flutter/material.dart';

class DiccionarioOrdenA extends StatelessWidget {
  const DiccionarioOrdenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantas con la Inicial A',
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Card(
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/Aceitilla.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const AceitillaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Aceitilla',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage(
                        'lib/assets/ahuehuete/ahuehuete_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const AhuehueteScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Ahuehuete',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/Ajenjo.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const AjenjoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Ajenjo',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/ajo/ajo_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const AjoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Ajo',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage(
                        'lib/assets/albahacar/albahacar_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const AlbahacarScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Albahacar',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/anis/anis_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const AnisScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Anís',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/apio/apio_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const ApioScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Apio',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/Arnica.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const ArnicaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Árnica',
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
              shadowColor: Colors.amber,
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image:
                        const AssetImage('lib/assets/artemisa/Artemisa_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const ArtemisaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Artemisa',
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
          ],
        ),
      ),
    );
  }
}
