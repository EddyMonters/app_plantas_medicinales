import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mil_en_Rama/descripcion_milrama.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mil_en_Rama/habitat_milrama.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mil_en_Rama/modo_empleo_milrama.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Mil_en_Rama/nombre_milrama.dart';
import 'package:flutter/material.dart';

class MilenRamaScreen extends StatefulWidget {
  const MilenRamaScreen({Key? key}) : super(key: key);

  @override
  State<MilenRamaScreen> createState() => _MilenRamaScreenState();
}

class _MilenRamaScreenState extends State<MilenRamaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Mil en Rama',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/rama_0.jpg'),
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
                const NombreMilenRamaPage(text: ''),
                DescripcionMilenRamaPage(context: context),
                HabitatMilenRamaPage(context: context),
                EmplearMilenRamaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
