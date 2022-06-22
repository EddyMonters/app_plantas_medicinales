import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Epazote/descripcion_epazote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Epazote/empleo_epazote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Epazote/habitat_epazote.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Epazote/nombre_comun_epazote.dart';
import 'package:flutter/material.dart';

class EpazoteScreen extends StatefulWidget {
  const EpazoteScreen({Key? key}) : super(key: key);

  @override
  State<EpazoteScreen> createState() => _EpazoteScreenState();
}

class _EpazoteScreenState extends State<EpazoteScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Epazote',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/D/Epazote_0.jpg'),
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
                const NombreEpazotePage(text: ''),
                DescripcionEpazotePage(context: context),
                HabitatEpazotePage(context: context),
                EmplearEpazotePage(context: context),
              ],
            ),
          ),
        ),
      );
}
