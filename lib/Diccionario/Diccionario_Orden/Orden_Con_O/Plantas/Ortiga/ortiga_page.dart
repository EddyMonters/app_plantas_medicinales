import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Ortiga/descripcion_ortiga.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Ortiga/habitat_ortiga.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Ortiga/modo_empleo_ortiga.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_O/Plantas/Ortiga/nombre_ortiga.dart';
import 'package:flutter/material.dart';

class OrtigaScreen extends StatefulWidget {
  const OrtigaScreen({Key? key}) : super(key: key);

  @override
  State<OrtigaScreen> createState() => _OrtigaScreenState();
}

class _OrtigaScreenState extends State<OrtigaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Ortiga',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/M/ortiga_0.jpg'),
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
                const NombreOrtigaPage(text: ''),
                DescripcionOrtigaPage(context: context),
                HabitatOrtigaPage(context: context),
                EmplearOrtigaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
