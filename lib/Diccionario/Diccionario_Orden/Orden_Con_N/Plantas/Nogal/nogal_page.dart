import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nogal/descripcion_nogal.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nogal/habitat_nogal.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nogal/modo_empleo_nogal.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_N/Plantas/Nogal/nombre_nogal.dart';
import 'package:flutter/material.dart';

class NogalScreen extends StatefulWidget {
  const NogalScreen({Key? key}) : super(key: key);

  @override
  State<NogalScreen> createState() => _NogalScreenState();
}

class _NogalScreenState extends State<NogalScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Nogal',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/nogal_0.jpg'),
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
                const NombreNogalPage(text: ''),
                DescripcionNogalPage(context: context),
                HabitatNogalPage(context: context),
                EmplearNogalPage(context: context),
              ],
            ),
          ),
        ),
      );
}
