import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tomillo/descripcion_tomillo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tomillo/habitat_tomillo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tomillo/modo_empleo_tomillo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tomillo/nombre_tomillo.dart';
import 'package:flutter/material.dart';

class TomilloScreen extends StatefulWidget {
  const TomilloScreen({Key? key}) : super(key: key);

  @override
  State<TomilloScreen> createState() => _TomilloScreenState();
}

class _TomilloScreenState extends State<TomilloScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Tomillo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/tomillo_0.jpg'),
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
                const NombreTomilloPage(text: ''),
                DescripcionTomilloPage(context: context),
                HabitatTomilloPage(context: context),
                EmplearTomilloPage(context: context),
              ],
            ),
          ),
        ),
      );
}
