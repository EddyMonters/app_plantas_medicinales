import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nopal_de_Castilla/descripcion_nopal.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nopal_de_Castilla/habitat_nopal.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nopal_de_Castilla/modo_empleo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nopal_de_Castilla/nombre_nopal.dart';
import 'package:flutter/material.dart';

class NopalScreen extends StatefulWidget {
  const NopalScreen({Key? key}) : super(key: key);

  @override
  State<NopalScreen> createState() => _NopalScreenState();
}

class _NopalScreenState extends State<NopalScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Nopal de Castilla',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/nopal_0.jpg'),
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
                const NombreNopalPage(text: ''),
                DescripcionNopalPage(context: context),
                HabitatNopalPage(context: context),
                EmplearNopalPage(context: context),
              ],
            ),
          ),
        ),
      );
}
