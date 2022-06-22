import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Grama/descripcion_grama.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Grama/habitat_grama.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Grama/modo_empleo_grama.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_G/Plantas/Grama/nombre_grama_page.dart';
import 'package:flutter/material.dart';

class GramaScreen extends StatefulWidget {
  const GramaScreen({Key? key}) : super(key: key);

  @override
  State<GramaScreen> createState() => _GramaScreenState();
}

class _GramaScreenState extends State<GramaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Grama',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/G/grama_0.jpg'),
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
                const NombreGramaPage(text: ''),
                DescripcionGramaPage(context: context),
                HabitatGramaPage(context: context),
                EmplearGramaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
