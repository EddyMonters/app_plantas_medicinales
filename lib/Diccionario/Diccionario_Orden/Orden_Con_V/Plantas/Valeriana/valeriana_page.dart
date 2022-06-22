import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Valeriana/descripcion_valeriana.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Valeriana/habitat_valeriana.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Valeriana/modo_empleo_valeriano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Valeriana/nombre_valeriana.dart';
import 'package:flutter/material.dart';

class ValerianaScreen extends StatefulWidget {
  const ValerianaScreen({Key? key}) : super(key: key);

  @override
  State<ValerianaScreen> createState() => _ValerianaScreenState();
}

class _ValerianaScreenState extends State<ValerianaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Valeriana',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/valeriana_0.jpg'),
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
                const NombreValerianaPage(text: ''),
                DescripcionValerianaPage(context: context),
                HabitatValerianaPage(context: context),
                EmplearValerianaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
