import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Platano/descripcion_platano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Platano/habitat_platano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Platano/modo_empleo_platano.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_P/Plantas/Platano/nombre_platano.dart';
import 'package:flutter/material.dart';

class PlatanoScreen extends StatefulWidget {
  const PlatanoScreen({Key? key}) : super(key: key);

  @override
  State<PlatanoScreen> createState() => _PlatanoScreenState();
}

class _PlatanoScreenState extends State<PlatanoScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Plátano',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/P/platano_0.jpg'),
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
                const NombrePlatanoPage(text: ''),
                DescripcionPlatanoPage(context: context),
                HabitatPlatanoPage(context: context),
                EmplearPlatanoPage(context: context),
              ],
            ),
          ),
        ),
      );
}
