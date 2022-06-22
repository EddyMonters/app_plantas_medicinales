import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Verbena/descripcion_verbena.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Verbena/habitat_verbena.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Verbena/modo_empleo_verbena.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_V/Plantas/Verbena/nombre_verbena.dart';
import 'package:flutter/material.dart';

class VerbenaScreen extends StatefulWidget {
  const VerbenaScreen({Key? key}) : super(key: key);

  @override
  State<VerbenaScreen> createState() => _VerbenaScreenState();
}

class _VerbenaScreenState extends State<VerbenaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Verbena',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/verbena_0.jpg'),
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
                const NombreVerbenaPage(text: ''),
                DescripcionVerbenaPage(context: context),
                HabitatVerbenaPage(context: context),
                EmplearVerbenaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
