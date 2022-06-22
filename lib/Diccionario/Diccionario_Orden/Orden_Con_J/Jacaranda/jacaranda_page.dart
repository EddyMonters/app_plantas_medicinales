import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_J/Jacaranda/descripcion_jacaranda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_J/Jacaranda/habitat_jacaranda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_J/Jacaranda/modo_empleo_jacaranda.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_J/Jacaranda/nombre_jacaranda.dart';
import 'package:flutter/material.dart';

class JacarandaScreen extends StatefulWidget {
  const JacarandaScreen({Key? key}) : super(key: key);

  @override
  State<JacarandaScreen> createState() => _JacarandaScreenState();
}

class _JacarandaScreenState extends State<JacarandaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Jacaranda',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/jacaranda_0.jpg'),
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
                const NombreJacarandaPage(text: ''),
                DescripcionJacarandaPage(context: context),
                HabitatJacarandaPage(context: context),
                EmplearJacarandaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
