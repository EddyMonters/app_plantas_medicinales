import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Huizache/descripcion_huizache.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Huizache/habitat_huizache.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Huizache/modo_empleo_huizache.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Huizache/nombre_huizache.dart';
import 'package:flutter/material.dart';

class HuizacheScreen extends StatefulWidget {
  const HuizacheScreen({Key? key}) : super(key: key);

  @override
  State<HuizacheScreen> createState() => _HuizacheScreenState();
}

class _HuizacheScreenState extends State<HuizacheScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Huizache',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/huizache_0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              elevation: 15,
              shadowColor: Colors.amber[900],
              bottom: const TabBar(
                indicatorColor:
                    Colors.amberAccent, //para colocar el color de la barra
                indicatorWeight: 5, //indicar el tamaño de grosor de la barra
                tabs: [
                  Tab(icon: Icon(Icons.local_florist), text: 'Nombre'),
                  Tab(icon: Icon(Icons.menu_book), text: 'Descripción'),
                  Tab(icon: Icon(Icons.landscape), text: 'Hábitat'),
                  Tab(icon: Icon(Icons.next_week), text: 'Se emplea para...'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                const NombreHuizachePage(text: ''),
                DescripcionHuizachePage(context: context),
                HabitatHuizachePage(context: context),
                EmplearHuizachePage(context: context),
              ],
            ),
          ),
        ),
      );
}
