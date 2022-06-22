import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Espinosilla/descripcion_espinosilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Espinosilla/habitat_espinosilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Espinosilla/modo_empelo_espinosilla.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_E/Plantas/Espinosilla/nombre_comun_espinosilla.dart';
import 'package:flutter/material.dart';

class EspinosillaScreen extends StatefulWidget {
  const EspinosillaScreen({Key? key}) : super(key: key);

  @override
  State<EspinosillaScreen> createState() => _EspinosillaScreenState();
}

class _EspinosillaScreenState extends State<EspinosillaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Espinosilla',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/D/Espinosilla_0.jpg'),
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
                const NombreEspinosillaPage(text: ''),
                DescripcionEspinosillaPage(context: context),
                HabitatEspinisillaPage(context: context),
                EmplearEspinosillaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
