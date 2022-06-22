import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_sapo/descripcion_sapo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_sapo/habitat_sapo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_sapo/modo_empleo_sapo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_sapo/nombre_sapo.dart';
import 'package:flutter/material.dart';

class HierbaSapoScreen extends StatefulWidget {
  const HierbaSapoScreen({Key? key}) : super(key: key);

  @override
  State<HierbaSapoScreen> createState() => _HierbaSapoScreenState();
}

class _HierbaSapoScreenState extends State<HierbaSapoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hierba del Sapo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/sapo_0.jpg'),
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
                const NombreSapoPage(text: ''),
                DescripcionSapoPage(context: context),
                HabitatSapoPage(context: context),
                EmplearSapoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
