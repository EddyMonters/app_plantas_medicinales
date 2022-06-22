import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresa/descripcion_fresa.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresa/habitat_fresa.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresa/modo_empleo_fresa.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_F/Plantas/Fresa/nombre_comun_fresa.dart';
import 'package:flutter/material.dart';

class FresaScreen extends StatefulWidget {
  const FresaScreen({Key? key}) : super(key: key);

  @override
  State<FresaScreen> createState() => _FresaScreenState();
}

class _FresaScreenState extends State<FresaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Fresa',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/F/Fresa_0.jpg'),
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
                const NombreFresaPage(text: ''),
                DescripcionFresaPage(context: context),
                HabitatFresaPage(context: context),
                EmplearFresaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
