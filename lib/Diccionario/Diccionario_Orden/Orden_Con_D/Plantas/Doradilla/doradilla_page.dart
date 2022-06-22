import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Doradilla/descripcion_doradilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Doradilla/habitat_doradilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Doradilla/modo_empleo_doradilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_D/Plantas/Doradilla/nombre_comun_doradilla.dart';
import 'package:flutter/material.dart';

class DoradillaScreen extends StatefulWidget {
  const DoradillaScreen({Key? key}) : super(key: key);

  @override
  State<DoradillaScreen> createState() => _DoradillaScreenState();
}

class _DoradillaScreenState extends State<DoradillaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Doradilla',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/D/Doradilla_0.jpg'),
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
                const NombreDoradillaPage(text: ''),
                DescripcionDoradillaPage(context: context),
                HabitatDoradillaPage(context: context),
                EmplearDoradillaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
