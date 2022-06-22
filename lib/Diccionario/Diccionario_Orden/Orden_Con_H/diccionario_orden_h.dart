import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_la_bruja/hierba_de_la_bruja_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_san_nicolas/hierba_nicolas_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_pollo/hierba_del_pollo_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_sapo/hierba_sapo_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Higuerilla/higuerilla_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hinojo/Hinojo_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hoja_santa/hoja_santa_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Huizache/huizache_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/hierba_luisa/hierba_luisa_page.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Menta/hierbabuena_page.dart';
import 'package:flutter/material.dart';

class DiccionarioOrdenH extends StatelessWidget {
  const DiccionarioOrdenH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plantas con la Inicial H',
            style: TextStyle(fontSize: 23)),
        flexibleSpace: const FlexibleSpaceBar(
          background: Image(
            image: AssetImage('lib/assets/Diccionario_plantas.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FadeInLeft(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
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
                    image: const AssetImage('lib/assets/H/bruja_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HierbaBrujaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hierba de la bruja',
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
                    image: const AssetImage('lib/assets/H/nicolas_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HierbaNicolasScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hierba de San Nicólas',
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
            Card(
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/pollo_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HierbaPolloScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hierba del Pollo',
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
                    image: const AssetImage('lib/assets/H/sapo_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HierbaSapoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hierba del sapo',
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
            Card(
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/luisa_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HierbaLuisaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hierba Luisa',
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
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/menta_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HierbabuenaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hierbabuena',
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
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/higuerilla_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) =>
                                const HierbaHiguerillaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Higuerilla',
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
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/hinojo_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HinojoScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hinojo',
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
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/santa_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HojaSantaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Hoja Santa',
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
              shadowColor: Colors.purple[700],
              elevation: 25,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: const AssetImage('lib/assets/H/huizache_0.jpg'),
                    fit: BoxFit.cover,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => const HuizacheScreen());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                  const Text(
                    'Huizache',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
