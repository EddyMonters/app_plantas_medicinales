import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_L/Plantas/Lavanda/descripcion_lavanda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_L/Plantas/Lavanda/habitat_lavanda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_L/Plantas/Lavanda/modo_empleo_lavanda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_L/Plantas/Lavanda/nombre_lavanda.dart';
import 'package:flutter/material.dart';

class LavandaScreen extends StatefulWidget {
  const LavandaScreen({Key? key}) : super(key: key);

  @override
  State<LavandaScreen> createState() => _LavandaScreenState();
}

class _LavandaScreenState extends State<LavandaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Lavanda',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/lavanda_0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              elevation: 15,
              shadowColor: Colors.purple[900],
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
                const NombreLavandaPage(text: ''),
                DescripcionLavandaPage(context: context),
                HabitatLavandaPage(context: context),
                EmplearLavandaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
