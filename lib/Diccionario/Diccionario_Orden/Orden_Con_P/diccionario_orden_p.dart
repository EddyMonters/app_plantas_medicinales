import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Papaya/papaya_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Pasiflora/pasiflora_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Platano/platano_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Poleo/poleo_page.dart';
import 'package:flutter/material.dart';

class DiccionarioOrdenP extends StatelessWidget {
  const DiccionarioOrdenP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantas con la Inicial P',
            style: TextStyle(fontSize: 23)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Diccionario_plantas.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInDown(
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
                    image: const AssetImage('lib/assets/P/papaya_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const PapayaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Papaya',
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
                    image: const AssetImage('lib/assets/P/pasiflora_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const PasifloraScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Pasiflora',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
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
                    image: const AssetImage('lib/assets/P/platano_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const PlatanoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Plátano',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
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
                    image: const AssetImage('lib/assets/P/poleo_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const PoleoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Poleo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
