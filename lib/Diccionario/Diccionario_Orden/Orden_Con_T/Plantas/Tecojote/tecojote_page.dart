import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tecojote/descripcion_tecojote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tecojote/habitat_tecojote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tecojote/modo_empleo_tecojote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tecojote/nombre_tecojote.dart';
import 'package:flutter/material.dart';

class TecojoteScreen extends StatefulWidget {
  const TecojoteScreen({Key? key}) : super(key: key);

  @override
  State<TecojoteScreen> createState() => _TecojoteScreenState();
}

class _TecojoteScreenState extends State<TecojoteScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Tecojote',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/tecojote_0.jpg'),
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
                const NombreTecojotePage(text: ''),
                DescripcionTecojotePage(context: context),
                HabitatTecojotePage(context: context),
                EmplearTecojotePage(context: context),
              ],
            ),
          ),
        ),
      );
}
