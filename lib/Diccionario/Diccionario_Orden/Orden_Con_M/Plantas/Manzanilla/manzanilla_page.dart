import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Manzanilla/descripcion_manzanilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Manzanilla/habitat_manzanilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Manzanilla/modo_empleo_manzanilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Manzanilla/nombre_manzanilla.dart';
import 'package:flutter/material.dart';

class ManzanillaScreen extends StatefulWidget {
  const ManzanillaScreen({Key? key}) : super(key: key);

  @override
  State<ManzanillaScreen> createState() => _ManzanillaScreenState();
}

class _ManzanillaScreenState extends State<ManzanillaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Manzanilla',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/manzanilla_0.jpg'),
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
                const NombreManzanillaPage(text: ''),
                DescripcionManzanillaPage(context: context),
                HabitatManzanillaPage(context: context),
                EmplearManzanillaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
