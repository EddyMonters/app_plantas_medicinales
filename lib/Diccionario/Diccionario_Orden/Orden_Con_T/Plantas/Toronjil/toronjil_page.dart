import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toronjil/descripcion_toronjil.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toronjil/habitat_toronjil.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toronjil/modo_empleo_toronjil.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Toronjil/nombre_toronjil.dart';
import 'package:flutter/material.dart';

class ToronjilScreen extends StatefulWidget {
  const ToronjilScreen({Key? key}) : super(key: key);

  @override
  State<ToronjilScreen> createState() => _ToronjilScreenState();
}

class _ToronjilScreenState extends State<ToronjilScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Toronjil',
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
                const NombreToronjilPage(text: ''),
                DescripcionToronjilPage(context: context),
                HabitatToronjilPage(context: context),
                EmplearToronjilPage(context: context),
              ],
            ),
          ),
        ),
      );
}
