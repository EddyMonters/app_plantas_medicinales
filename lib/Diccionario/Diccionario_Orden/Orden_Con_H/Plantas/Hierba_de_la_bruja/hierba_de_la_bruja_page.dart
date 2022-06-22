import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_la_bruja/descripcion_bruja.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_la_bruja/habitat_bruja.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_la_bruja/modo_empleo_bruja.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_la_bruja/nombre_bruja.dart';
import 'package:flutter/material.dart';

class HierbaBrujaScreen extends StatefulWidget {
  const HierbaBrujaScreen({Key? key}) : super(key: key);

  @override
  State<HierbaBrujaScreen> createState() => _HierbaBrujaScreenState();
}

class _HierbaBrujaScreenState extends State<HierbaBrujaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hierba de la bruja',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/bruja_0.jpg'),
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
                const NombreBrujaPage(text: ''),
                DescripcionBrujaPage(context: context),
                HabitatBrujaPage(context: context),
                EmplearBrujaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
