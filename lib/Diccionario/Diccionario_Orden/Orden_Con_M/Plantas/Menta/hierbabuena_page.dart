import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Menta/descripcion_hierbabuena.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Menta/habitat_hierbabuena.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Menta/modo_empleo_hierbabuena.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Menta/nombre_hierbabuena.dart';
import 'package:flutter/material.dart';

class HierbabuenaScreen extends StatefulWidget {
  const HierbabuenaScreen({Key? key}) : super(key: key);

  @override
  State<HierbabuenaScreen> createState() => _HierbabuenaScreenState();
}

class _HierbabuenaScreenState extends State<HierbabuenaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hierbabuena',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/menta_0.jpg'),
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
                const NombreHierbabuenaPage(text: ''),
                DescripcionHierbabuenaPage(context: context),
                HabitatHierbabuenaPage(context: context),
                EmplearHierbabuenaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
