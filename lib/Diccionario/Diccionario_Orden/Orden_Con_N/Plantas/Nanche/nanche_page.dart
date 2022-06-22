import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nanche/descripcion_nanche.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nanche/habitat_nanche.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nanche/modo_empleo_nanche.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nanche/nombre_nanche.dart';
import 'package:flutter/material.dart';

class NancheScreen extends StatefulWidget {
  const NancheScreen({Key? key}) : super(key: key);

  @override
  State<NancheScreen> createState() => _NancheScreenState();
}

class _NancheScreenState extends State<NancheScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Nanche',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/nanche_0.jpg'),
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
                const NombreNanchePage(text: ''),
                DescripcionNanchePage(context: context),
                HabitatNanchePage(context: context),
                EmplearNanchePage(context: context),
              ],
            ),
          ),
        ),
      );
}
