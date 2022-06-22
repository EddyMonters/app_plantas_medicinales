import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Poleo/descripcion_poleo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Poleo/habitat_poleo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Poleo/modo_empleo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Poleo/nombre_poleo.dart';
import 'package:flutter/material.dart';

class PoleoScreen extends StatefulWidget {
  const PoleoScreen({Key? key}) : super(key: key);

  @override
  State<PoleoScreen> createState() => _PoleoScreenState();
}

class _PoleoScreenState extends State<PoleoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Poleo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage(
                      'lib/assets/C/Contrahierba/contrahierba_0.jpg'),
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
                const NombrePoleoPage(text: ''),
                DescripcionPoleoPage(context: context),
                HabitatPoleoPage(context: context),
                EmplearPoleoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
