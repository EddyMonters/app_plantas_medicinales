import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Guayaba/descripcion_guayaba.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Guayaba/habitat_guayaba.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Guayaba/modo_empleo_guayaba.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Guayaba/nombre_guayaba.dart';
import 'package:flutter/material.dart';

class GuayabaScreen extends StatefulWidget {
  const GuayabaScreen({Key? key}) : super(key: key);

  @override
  State<GuayabaScreen> createState() => _GuayabaScreenState();
}

class _GuayabaScreenState extends State<GuayabaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Guayaba',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/G/guayaba_0.jpg'),
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
                const NombreGuayabaPage(text: ''),
                DescripcionGuayabaPage(context: context),
                HabitatGuayabaPage(context: context),
                EmplearGuayabaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
