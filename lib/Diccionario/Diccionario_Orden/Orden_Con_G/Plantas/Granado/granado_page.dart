import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Granado/descripcion_granado.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Granado/habitat_granado.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Granado/modo_empleo_granado.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Granado/nombre_granado.dart';
import 'package:flutter/material.dart';

class GranadoScreen extends StatefulWidget {
  const GranadoScreen({Key? key}) : super(key: key);

  @override
  State<GranadoScreen> createState() => _GranadoScreenState();
}

class _GranadoScreenState extends State<GranadoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Granado',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/G/granado_0.jpg'),
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
                const NombreGranadoPage(text: ''),
                DescripcionGranadoPage(context: context),
                HabitatGranadoPage(context: context),
                EmplearGranadoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
