import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cempas%C3%BAchil/descripcion_cempasuchil.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cempas%C3%BAchil/habitat_cempasuchil.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cempas%C3%BAchil/modo_empleo_cempasuchil.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_C/Plantas/Cempas%C3%BAchil/nombre_comun_cempasuchil.dart';
import 'package:flutter/material.dart';

class CempasuchilScreen extends StatefulWidget {
  const CempasuchilScreen({Key? key}) : super(key: key);

  @override
  State<CempasuchilScreen> createState() => _CempasuchilScreenState();
}

class _CempasuchilScreenState extends State<CempasuchilScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Cempasúchil',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image:
                      AssetImage('lib/assets/C/Cempasuchil/cempasuchil_1.jpg'),
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
                const NombreComunCempasuchilPage(text: ''),
                DescripcionCempasuchilPage(context: context),
                HabitatCempasuchilPage(context: context),
                EmplearCempasuchilPage(context: context),
              ],
            ),
          ),
        ),
      );
}
