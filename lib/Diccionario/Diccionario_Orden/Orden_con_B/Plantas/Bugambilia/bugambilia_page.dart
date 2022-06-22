import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Bugambilia/descripcion_buga.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Bugambilia/habitat_buga.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Bugambilia/modo_empleo_buga.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_con_B/Plantas/Bugambilia/nombre_comun_bugambilia.dart';
import 'package:flutter/material.dart';

class BugambiliaScreen extends StatefulWidget {
  const BugambiliaScreen({Key? key}) : super(key: key);

  @override
  State<BugambiliaScreen> createState() => _BugambiliaScreenState();
}

class _BugambiliaScreenState extends State<BugambiliaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Bugambilia',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/B/bugambilia/bugambilia_0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              elevation: 15,
              shadowColor: Colors.green,
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
                const NombreComunBugambiliaPage(text: ''),
                DescripcionBugambiliaPage(context: context),
                HabitatBugambiliaPage(context: context),
                EmplearBugambiliaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
