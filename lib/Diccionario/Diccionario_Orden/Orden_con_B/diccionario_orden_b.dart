import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Berro/berro_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Bugambilia/bugambilia_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class DiccionarioOrdenB extends StatelessWidget {
  const DiccionarioOrdenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantas con la Inicial B',
            style: TextStyle(fontSize: 23)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Diccionario_plantas.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInDown(
        // duration: Duration(microseconds: 250),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            const SizedBox(
              height: 50,
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
                    image: const AssetImage('lib/assets/B/berro/berro.png'),
                    fit: BoxFit.cover,
                    height: 200,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const BerroScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Berro',
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
              height: 40,
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
                        'lib/assets/B/bugambilia/bugambilia_0.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const BugambiliaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Bugambilia',
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
