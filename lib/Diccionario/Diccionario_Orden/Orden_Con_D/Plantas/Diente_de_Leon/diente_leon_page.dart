// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Diente_de_Leon/descripcion_diente.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Diente_de_Leon/habitat_diente.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Diente_de_Leon/modo_empleo_diente.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Diente_de_Leon/nombre_comun_diente.dart';
import 'package:flutter/material.dart';

class DientedeLeonScreen extends StatefulWidget {
  const DientedeLeonScreen({Key? key}) : super(key: key);

  @override
  State<DientedeLeonScreen> createState() => _DientedeLeonScreenState();
}

class _DientedeLeonScreenState extends State<DientedeLeonScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Diente de León',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/D/Diente_Leon_0.jpg'),
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
                const NombreDienteLeonPage(text: ''),
                DescripcionDienteLeonPage(context: context),
                HabitatDienteLeonPage(context: context),
                EmplearDienteLeonPage(context: context),
              ],
            ),
          ),
        ),
      );
}
