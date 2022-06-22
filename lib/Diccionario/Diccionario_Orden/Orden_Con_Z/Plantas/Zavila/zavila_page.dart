import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zavila/descripcion_zavila.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zavila/habitat_zavila.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zavila/modo_empleo_zavila.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_Z/Plantas/Zavila/nombre_zavila.dart';
import 'package:flutter/material.dart';

class ZavilaScreen extends StatefulWidget {
  const ZavilaScreen({Key? key}) : super(key: key);

  @override
  State<ZavilaScreen> createState() => _ZavilaScreenState();
}

class _ZavilaScreenState extends State<ZavilaScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Sábila',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/T/zabila_0.jpg'),
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
                const NombreZavilaPage(text: ''),
                DescripcionZavilaPage(context: context),
                HabitatZavilaPage(context: context),
                EmplearZavilaPage(context: context),
              ],
            ),
          ),
        ),
      );
}
