import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Vincapervinca/descripcion_vincapervinca.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Vincapervinca/habitat_vincapervinca.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Vincapervinca/modo_empleo_vincapervinca.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Vincapervinca/nombre_vincapervinca.dart';
import 'package:flutter/material.dart';

class VincapervincaScreen extends StatefulWidget {
  const VincapervincaScreen({Key? key}) : super(key: key);

  @override
  State<VincapervincaScreen> createState() => _VincapervincaScreenState();
}

class _VincapervincaScreenState extends State<VincapervincaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Vincapervinca',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/vinca_0.jpg'),
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
                const NombreVincapervincaPage(text: ''),
                DescripcionVincapervincaPage(context: context),
                HabitatVincapervincaPage(context: context),
                EmplearVincapervincaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
