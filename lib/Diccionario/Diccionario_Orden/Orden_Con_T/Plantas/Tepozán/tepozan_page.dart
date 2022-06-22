import 'package:animate_do/animate_do.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tepoz%C3%A1n/descripcion_tepozan.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tepoz%C3%A1n/habitat_tepozan.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tepoz%C3%A1n/modo_empleo_tepozan.dart';
import 'package:app_plantas_medicinales/Diccionario/Diccionario_Orden/Orden_Con_T/Plantas/Tepoz%C3%A1n/nombre_tepozan.dart';
import 'package:flutter/material.dart';

class TepozanScreen extends StatefulWidget {
  const TepozanScreen({Key? key}) : super(key: key);

  @override
  State<TepozanScreen> createState() => _TepozanScreenState();
}

class _TepozanScreenState extends State<TepozanScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: FadeIn(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Tepozán',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage(
                      'lib/assets/C/Contrahierba/contrahierba_0.jpg'),
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
                const NombreTepozanPage(text: ''),
                DescripcionTepozanPage(context: context),
                HabitatTepozanPage(context: context),
                EmplearTepozanPage(context: context),
              ],
            ),
          ),
        ),
      );
}
