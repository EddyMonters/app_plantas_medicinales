import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_san_nicolas/descripcion_nicolas.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_san_nicolas/habitat_nicolas.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_san_nicolas/modo_empleo_nicolas.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_H/Plantas/Hierba_de_san_nicolas/nombre_nicolas.dart';
import 'package:flutter/material.dart';

class HierbaNicolasScreen extends StatefulWidget {
  const HierbaNicolasScreen({Key? key}) : super(key: key);

  @override
  State<HierbaNicolasScreen> createState() => _HierbaNicolasScreenState();
}

class _HierbaNicolasScreenState extends State<HierbaNicolasScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hierba de San Nicolás',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('lib/assets/H/nicolas_0.jpg'),
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
                const NombreNicolasPage(text: ''),
                DescripcionNicolasPage(context: context),
                HabitatNicolasPage(context: context),
                EmplearNicolasPage(context: context),
              ],
            ),
          ),
        ),
      );
}
