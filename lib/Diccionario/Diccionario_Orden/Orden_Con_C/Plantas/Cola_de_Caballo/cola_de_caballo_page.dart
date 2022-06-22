import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cola_de_Caballo/descripcion_cola_caballo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cola_de_Caballo/habitat_cola_caballo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cola_de_Caballo/modo_empleo_cola_caballo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cola_de_Caballo/nombre_comun_cola_caballo.dart';
import 'package:flutter/material.dart';

class ColadeCaballoScreen extends StatefulWidget {
  const ColadeCaballoScreen({Key? key}) : super(key: key);

  @override
  State<ColadeCaballoScreen> createState() => _ColadeCaballoScreenState();
}

class _ColadeCaballoScreenState extends State<ColadeCaballoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Cola de Caballo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image:
                      AssetImage('lib/assets/C/Cola_de_Caballo/Caballo_0.jpg'),
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
                const NombreComunColaPage(text: ''),
                DescripcionColaPage(context: context),
                HabitatColaPage(context: context),
                EmplearColaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
