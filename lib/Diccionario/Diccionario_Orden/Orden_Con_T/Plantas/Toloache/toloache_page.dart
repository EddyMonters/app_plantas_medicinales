// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toloache/descripcion_toloache.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toloache/habitat_toloache.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toloache/modo_empleo_toloache.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toloache/nombre_toloache.dart';
import 'package:flutter/material.dart';

class ToloacheScreen extends StatefulWidget {
  const ToloacheScreen({Key? key}) : super(key: key);

  @override
  State<ToloacheScreen> createState() => _ToloacheScreenState();
}

class _ToloacheScreenState extends State<ToloacheScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Toloache',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/toloache_0.jpg'),
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
                const NombreToloachePage(text: ''),
                DescripcionToloachePage(context: context),
                HabitatToloachePage(context: context),
                EmplearToloachePage(context: context),
              ],
            ),
          ),
        ),
      );
}
