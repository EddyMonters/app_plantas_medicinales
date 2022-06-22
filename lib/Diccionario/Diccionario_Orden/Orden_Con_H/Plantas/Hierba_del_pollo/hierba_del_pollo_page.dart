import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_pollo/descripcion_pollo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_pollo/habitat_pollo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_pollo/modo_empleo_pollo.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_del_pollo/nombre_pollo.dart';
import 'package:flutter/material.dart';

class HierbaPolloScreen extends StatefulWidget {
  const HierbaPolloScreen({Key? key}) : super(key: key);

  @override
  State<HierbaPolloScreen> createState() => _HierbaPolloScreenState();
}

class _HierbaPolloScreenState extends State<HierbaPolloScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hierba del Pollo',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/pollo_0.jpg'),
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
                const NombrePolloPage(text: ''),
                DescripcionPolloPage(context: context),
                HabitatPolloPage(context: context),
                EmplearPolloPage(context: context),
              ],
            ),
          ),
        ),
      );
}
