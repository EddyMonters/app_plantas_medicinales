import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Maravilla/descripcion_maravilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Maravilla/habitat_maravilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Maravilla/modo_empleo_maravilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_M/Plantas/Maravilla/nombre_maravilla.dart';
import 'package:flutter/material.dart';

class MaravillaScreen extends StatefulWidget {
  const MaravillaScreen({Key? key}) : super(key: key);

  @override
  State<MaravillaScreen> createState() => _MaravillaScreenState();
}

class _MaravillaScreenState extends State<MaravillaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Maravilla',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/maravilla_0.jpg'),
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
                const NombreMaravillaPage(text: ''),
                DescripcionMaravillaPage(context: context),
                HabitatMaravillaPage(context: context),
                EmplearMaravillaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
